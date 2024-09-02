ThisBuild / scalaVersion     := "2.12.13"
ThisBuild / version          := "0.1.0"

val chiselVersion = "3.5.0"

resolvers ++= Seq(
  Resolver.sonatypeRepo("releases")
)

lazy val root = (project in file("."))
  .settings(
    name := "Chisel",
    libraryDependencies ++= Seq(
      //添加chisel_test依赖
      "edu.berkeley.cs" %% "chiseltest" % "0.5.0",
      "edu.berkeley.cs" %% "chisel3" % chiselVersion,
      //添加chisel-iotesters依赖
      "edu.berkeley.cs" %% "chisel-iotesters" % "1.3.2",
    ),
    scalacOptions ++= Seq(
      "-language:reflectiveCalls",
      "-deprecation",
      "-feature",
      "-Xcheckinit",
    ),
    resolvers ++= Seq(
      Resolver.sonatypeRepo("releases"),
    ),
    addCompilerPlugin("edu.berkeley.cs" % "chisel3-plugin" % chiselVersion cross CrossVersion.full),
  )
//sonatypeOssRepos