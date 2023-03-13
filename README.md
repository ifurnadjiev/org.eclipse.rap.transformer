# org.eclipse.rap.transformer
Use Eclipse Transformer project to make RAP runtime p2 repo Jakarta compatible

How to use it:

1. Create "input" forlder and place RAP runtime unziped files there
2. Run in the "input/plugins" forder the following command to remove signatures from bundles":

    "for II in *.jar; do zip $II -d META-INF/ECLIPSE_.SF META-INF/ECLIPSE_.RSA; done"
    
3. Copy "jakarta.servlet-api-5.0.0.jar" from "servlet-api" to "input/plugins"
4. Run the transformer with command:

    "java -jar org.eclipse.transformer.cli-0.6.0-SNAPSHOT.jar ./input ./output -ts ./rules/jakarta-selection.properties -tb ./rules/jakarta-bundles.properties -tv ./rules/jakarta-versions.properties"
    
5. Create new RAP runtime reposotpry with correct SHA hashes:

    "java -jar D:\Eclipse\plugins\org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar -application org.eclipse.equinox.p2.publisher.FeaturesAndBundlesPublisher -metadataRepository file:/E:/Temp/org.eclipse.rap.transformer/output_repo -artifactRepository file:/E:/Temp/org.eclipse.rap.transformer/output_repo -source E:/Temp/org.eclipse.rap.transformer/output -compress -publishArtifacts"
