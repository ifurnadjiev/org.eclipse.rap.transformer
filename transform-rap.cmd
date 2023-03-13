copy servlet-api\*.jar input\plugins

java -jar org.eclipse.transformer.cli-0.6.0-SNAPSHOT.jar ./input ./output -ts ./rules/jakarta-selection.properties -tb ./rules/jakarta-bundles.properties -tv ./rules/jakarta-versions.properties

java -jar D:\Eclipse\plugins\org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar -application org.eclipse.equinox.p2.publisher.FeaturesAndBundlesPublisher -metadataRepository file:/E:/Temp/org.eclipse.rap.transformer/output_repo -artifactRepository file:/E:/Temp/org.eclipse.rap.transformer/output_repo -source E:/Temp/org.eclipse.rap.transformer/output -compress -publishArtifacts
