
source('RforCFmeansRF_lcm.R')
# 3
predCFoutRF <- function(dataFrame, outVarName, treatVarName, treatVal) {
  library("ranger");
  forest <- ranger(paste(outVarName, " ~ .", sep=""), data=dataFrame);
  CFdata <- data.frame(dataFrame);
  CFdata[[treatVarName]] <- rep(treatVal, length(CFdata[[treatVarName]]));
  CFout <- predictions(predict(forest, data=CFdata))
  return(CFout);
}

# predCFoutLM <- function(dataFrame, outVarName, treatVarName,  treatVal) {
#   M <- lm(paste(outVarName, " ~ .", sep=""), data=dataFrame);
#   CFdata <- data.frame(dataFrame);
#   CFdata[[treatVarName]] <- rep(treatVal, length(CFdata[[treatVarName]]));
#   CFout <- predict(M, data=CFdata)
# }

predCFprobRF <- function(dataFrame, outVarName, treatVarName, treatVal) {
  library("ranger");
  forest <- ranger(paste(outVarName, " ~ .", sep=""), data=dataFrame, probability=TRUE);
  CFdata <- data.frame(dataFrame);
  CFdata[[treatVarName]] <- rep(treatVal, length(CFdata[[treatVarName]]));
  CFout <- predictions(predict(forest, data=CFdata))
  return(CFout[, 2])
}

# 0
trainCFoutPredRF <- function(dataFrame, outVarName) {
  library("ranger");
  forest <- ranger(paste(outVarName, " ~ .", sep=""), data=dataFrame);
  return(forest);
}

trainCFprobPredRF <- function(dataFrame, outVarName) {
  library("ranger");
  forest <- ranger(paste(outVarName, " ~ .", sep=""), data=dataFrame, probability=TRUE);
  return(forest);
}

CFmeansForTreatRangeRF <- function(dataFrame, outVarName, treatVarName, treatVec, minTreat, maxTreat) {
  
  CFmeans <- rep(0, maxTreat - minTreat + 1);
  
  for (i in minTreat:maxTreat){
    CFmeans[i] <- mean(predCFoutRF(dataFrame, outVarName, treatVarName, treatVec[i]));
  }
  
  return(CFmeans);
  
}

# 2
CFmeansForTreatVecRF <- function(dataFrame, outVarName, treatVarName, treatVec) {
  
  CFmeans <- rep(0, length(treatVec));
  
  for (i in 1:length(treatVec)) {
    CFmeans[i] <- mean(predCFoutRF(dataFrame, outVarName, treatVarName, treatVec[i]));
  }
  
  return(CFmeans);
    
}

# CFmeansForTreatVecLM <- function(dataFrame, outVarName, treatVarName, treatVec) {
#   
#   CFmeans <- rep(0, length(treatVec));
#   
#   for (i in 1:length(treatVec)) {
#     CFmeans[i] <- mean(predCFoutLM(dataFrame, outVarName, treatVarName, treatVec[i]));
#   }
#   
#   return(CFmeans);
#   
# }


CFprobsForTreatVecRF <- function(dataFrame, outVarName, treatVarName, treatVec) {
  
  CFprobs <- rep(0, length(treatVec));
  
  for (i in 1:length(treatVec)) {
    CFprobs[i] <- mean(predCFprobRF(dataFrame, outVarName, treatVarName, treatVec[i]));
  }
  
  return(CFprobs);
  
}

# 1
CFmeansForDecileBinsRF <- function(dataFrame, outVarName, treatVarName) {
  fivePercentQuantiles <- quantile(dataFrame[[treatVarName]], prob = seq(0, 1, length = 21), type = 5)
  evenQuantiles <- fivePercentQuantiles[seq(2, 20, by=2)]
  return(CFmeansForTreatVecRF(dataFrame, outVarName, treatVarName, evenQuantiles))
}

# CFmeansForDecileBinsLM <- function(dataFrame, outVarName, treatVarName) {
#   fivePercentQuantiles <- quantile(dataFrame[[treatVarName]], prob = seq(0, 1, length = 21), type = 5)
#   evenQuantiles <- fivePercentQuantiles[seq(2, 20, by=2)]
#   return(CFmeansForTreatVecLM(dataFrame, outVarName, treatVarName, evenQuantiles))
# }

CFprobsForDecileBinsRF <- function(dataFrame, outVarName, treatVarName) {
  fivePercentQuantiles <- quantile(dataFrame[[treatVarName]], prob = seq(0, 1, length = 21), type = 5)
  evenQuantiles <- fivePercentQuantiles[seq(2, 20, by=2)]
  return(CFprobsForTreatVecRF(dataFrame, outVarName, treatVarName, evenQuantiles))
}

maxContrast <- function(CFMeanVec) {
  
  maxCon <- 0
  index1 <- -1
  index2 <- -1
  
  for (i in 1:(length(CFMeanVec) - 1)) {
    for (j in (i + 1):length(CFMeanVec)) {
      if ((CFMeanVec[i] - CFMeanVec[j]) > maxCon) {
        maxCon <- CFMeanVec[i] - CFMeanVec[j]
        index1 <- i
        index2 <- j
      }
      else if ((CFMeanVec[j] - CFMeanVec[i]) > maxCon) {
        maxCon <- CFMeanVec[j] - CFMeanVec[i]
        index1 <- j
        index2 <- i
      }
    }
  }
  
  return(c(maxCon, index1, index2))
  
}

normalize <- function(x) {
# Fromhttps://stats.stackexchange.com/questions/70801/how-to-normalize-data-to-0-1-range
  x <- as.matrix(x)
  minAttr=apply(x, 2, min)
  maxAttr=apply(x, 2, max)
  x <- sweep(x, 2, minAttr, FUN="-") 
  x=sweep(x, 2,  maxAttr-minAttr, "/") 
  attr(x, 'normalized:min') = minAttr
  attr(x, 'normalized:max') = maxAttr
  return (x)
} 

# Subject functions

goodFactor <- function(n) {
  
  d <- 2;
  factors <- list();
  i = 0;
  
  while (n > 1) {
    if (n %% d == 0) {
      i = i + 1;
      factors[[i]] <- d;
      n = n / d;
    }
    else {
      d = d + 1;
    }
  }
  
  return(factors);
  
}

goodProg <- function(x, y, z) {
  r <- 0;
  if (x > 0) {
    r <- 1;
    if (y > 0) {
      r <- 2;
      if (z > 0) {
        r <- 3;
      } else {
        r <- -3;
      }
    } else {
      r <- -2;
    }
  } else {
    r <- -1;
  }
  return(r);
}

badProg <- function(x, y, z) {
  r <- 0;
  if (x > 0) {
    r <- 1;
    if (y > 0) {
      r <- 2;
      if (z >= 0) {
        r <- 3;
      } else {
        r <- -3;
      }
    } else {
      r <- -2;
    }
  } else {
    r <- -1;
  }
  return(r);
}

# goodGCD <- function(p, q) {
#   while (q != 0) {
#     temp <- q;
#     q <- p %% q;
#     p <- temp;
#   }
#   return(p);
# }

# badGCD <- function(p, q) {
#   while (q != 0) {
#     temp <- q;
#     q <- p %% ifelse(q == 5, 4, q);
#     p <- temp;
#   }
#   return(p);
# }

# forest <- trainCFoutPredRF(xgcd_x2_fault_binerrs_all[1:30,], "Y")

compute <- function(dataframe){
  headers <- names(dataframe)
  result <- c(1, 1, 1)
  for(i in 1 : length(dataframe)){
    currentVec <- dataframe[,i]
    vec <- maxContrast(currentVec)
    result <- data.frame(result, vec)
  }
  result[,1] <- NULL
  names(result) <- headers
  return(result)
}

getTheBiggest <- function(dataframe){
  # return (names(dataframe)[order(-dataframe[1,])])
  return (dataframe[order(-dataframe[1,])])
}

#newoutput2 <- data.frame(t(newoutput))
#colnames(newoutput2) <- newoutput2[1,]

# =============================
# Start
# input: newoutput, outY
# ============================= 
newoutput <- read.table('programinputs.txt', fill=TRUE)
outY <- read.table('faults.txt')
rownames(newoutput) <- newoutput[,1]
newoutput <- newoutput[,-1]
newoutput <- data.frame(t(newoutput))

Y <- data.frame(t(outY))
colnames(Y) <- c("Y")

lcm <- na.omit(data.frame(Y, newoutput))

CFmeanResult <- genCFmeansRF_lcm(lcm)
maxContrastDF <- compute(CFmeanResult)

print(getTheBiggest(maxContrastDF))
#===============================

#Y = xgcd_out$Y
# xgcd_x2_fault_binerrs_all <- data.frame(Y, xgcd_vars)
# CFmeanResult <- genCFmeansRF_xgcd_x2_fault_binerrs()

#Y = bad_xgcd_out$Y
#java_output_dataframe <- data.frame(Y, newoutput)
#CFmeanJavaResult <- genCFmeansRF_java_output()

# maxContrastDF <- compute(CFmeanResult)
# getTheBiggest(maxContrastDF)

#maxContrastDFJava <- compute(CFmeanJavaResult)
#getTheBiggest(maxContrastDFJava)
