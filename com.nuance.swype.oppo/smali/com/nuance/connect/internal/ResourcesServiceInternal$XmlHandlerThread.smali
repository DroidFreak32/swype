.class Lcom/nuance/connect/internal/ResourcesServiceInternal$XmlHandlerThread;
.super Lcom/nuance/connect/util/HandlerThread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/ResourcesServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "XmlHandlerThread"
.end annotation


# instance fields
.field processResources:Lcom/nuance/connect/internal/ConnectResources;

.field final synthetic this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/ResourcesServiceInternal;Lcom/nuance/connect/internal/ConnectResources;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$XmlHandlerThread;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-direct {p0}, Lcom/nuance/connect/util/HandlerThread;-><init>()V

    iput-object p2, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$XmlHandlerThread;->processResources:Lcom/nuance/connect/internal/ConnectResources;

    return-void
.end method

.method private processResourcesXml(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$XmlHandlerThread;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$000(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "starting to process resource file: "

    const-string v2, " language="

    invoke-interface {v0, v1, p2, v2, p3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$XmlHandlerThread;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$000(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v3, "processResourcesXML.BEGIN!"

    invoke-interface {v0, v3, p3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$XmlHandlerThread;->processResources:Lcom/nuance/connect/internal/ConnectResources;

    invoke-virtual {v0, p3}, Lcom/nuance/connect/internal/ConnectResources;->replaceResourcesBegin(Ljava/lang/String;)V

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    :cond_0
    :goto_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    if-ne v0, v5, :cond_6

    const-string v0, "string"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const-string v4, "name"

    invoke-interface {v3, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-eq v0, v6, :cond_0

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_2
    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$XmlHandlerThread;->processResources:Lcom/nuance/connect/internal/ConnectResources;

    invoke-virtual {v0, p3}, Lcom/nuance/connect/internal/ConnectResources;->replaceResourcesEnd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$XmlHandlerThread;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$000(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v3, "processResourcesXML.END! language="

    invoke-interface {v0, v3, p3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$XmlHandlerThread;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$400(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$XmlHandlerThread;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$400(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$XmlHandlerThread;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$1100(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$XmlHandlerThread;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-static {v2}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$400(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$XmlHandlerThread;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$XmlHandlerThread;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$400(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$1000(Lcom/nuance/connect/internal/ResourcesServiceInternal;Ljava/lang/String;)V

    :cond_1
    throw v1
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$XmlHandlerThread;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-static {v1}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$000(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string v2, "processResourcesXML.XmlPullParserException ex="

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    new-instance v0, Ljava/io/File;

    const-string v1, ""

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$XmlHandlerThread;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$000(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "failed to delete file "

    :goto_1
    invoke-interface {v0, v1, p2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$XmlHandlerThread;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$000(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "finished processing resource file: "

    invoke-interface {v0, v1, p2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_3
    :try_start_4
    const-string v0, "plurals"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_4
    :goto_2
    if-lez v0, :cond_0

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    if-ne v4, v6, :cond_5

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_5
    if-ne v4, v5, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$XmlHandlerThread;->processResources:Lcom/nuance/connect/internal/ConnectResources;

    invoke-virtual {v0, p3, v1}, Lcom/nuance/connect/internal/ConnectResources;->setLanguageStrings(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$XmlHandlerThread;->processResources:Lcom/nuance/connect/internal/ConnectResources;

    invoke-virtual {v0, p3}, Lcom/nuance/connect/internal/ConnectResources;->replaceResourcesEnd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$XmlHandlerThread;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$000(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "processResourcesXML.END! language="

    invoke-interface {v0, v1, p3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$XmlHandlerThread;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$400(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$XmlHandlerThread;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$400(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$XmlHandlerThread;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$1100(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$XmlHandlerThread;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-static {v1}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$400(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$XmlHandlerThread;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$XmlHandlerThread;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$400(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$1000(Lcom/nuance/connect/internal/ResourcesServiceInternal;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_7
    new-instance v0, Ljava/io/File;

    const-string v1, ""

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$XmlHandlerThread;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$000(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "failed to delete file "

    goto/16 :goto_1

    :catch_1
    move-exception v0

    :try_start_6
    iget-object v1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$XmlHandlerThread;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-static {v1}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$000(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string v2, "processResourcesXML.IOException ex="

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    new-instance v0, Ljava/io/File;

    const-string v1, ""

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$XmlHandlerThread;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$000(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "failed to delete file "

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    new-instance v1, Ljava/io/File;

    const-string v2, ""

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$XmlHandlerThread;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-static {v1}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$000(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string v2, "failed to delete file "

    invoke-interface {v1, v2, p2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    throw v0
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)Landroid/os/Message;
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "PROP_CATEGORY_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PROP_LANGUAGE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "filePath"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$XmlHandlerThread;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-static {v3, v2}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$500(Lcom/nuance/connect/internal/ResourcesServiceInternal;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/nuance/connect/internal/ResourcesServiceInternal$XmlHandlerThread;->processResourcesXml(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
