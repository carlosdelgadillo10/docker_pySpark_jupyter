from pyspark.sql import SparkSession

spark = SparkSession.builder \
    .master("spark://spark-master:7077") \
    .appName("AmbientTest") \
    .getOrCreate()

print(spark.range(100).count())  # Debe imprimir 100

