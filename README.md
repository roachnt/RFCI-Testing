# RFCI Testing

Each of the directories in this repository represents a 
comparison of three different fault localization techniques on a given program.
These techniques are:
<ul>
  <li>Tarantula, a coverage based technique</li>
  <li>ESP, a predicate based technique</li>
  <li>A technique developed by Dr. Andy Podgurski</li>
</ul>

While there are many files in each of these directories, 
anyone who is simply focused on running the techniques should only be concerned with three programs in each directory. 
Two of these programs will be Python files and have the naming convention _filename_\_esp.py and _filename_\_tarantula.py, running these two files should provide the predicates (for ESP) and line numbers (Tarantula) and their respective scores.

## Before you run the programs
