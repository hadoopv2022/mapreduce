hadoop version
javac -version
//New Folder WordCountTutorial and add WordCount.java
//New folder input data input.txt inside folder Input
//New folder tutorial_classfiles
export HADOOP_CLASSPATH=$(hadoop classpath)
echo $HADOOP_CLASSPATH
hadoop fs -mkdir /WordCountTutorial
haddop fs -mkdir /WordCountTutorial/Input
//Check localhost:50070 or respective port
hadoop fs -put 'URL OF input.txt' /WordCountTutorial/Input
cd 'WordCountTutorial Path'
javac -classpath ${HADOOP_CLASSPATH} -d 'tutorial_classfiles folder url' 'wordcount.java url'
jar -cvd firstTutorial.jar -C 'tutorial_classfiles url'
hadoop jar 'firstTutorial.jar path' WordCount /WordCountTutorial/Input /WordcountTutorial/Output
hadoop dfs -cat /WordCountTutorial/Output/*