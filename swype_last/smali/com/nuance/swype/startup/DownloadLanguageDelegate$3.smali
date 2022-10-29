.class final Lcom/nuance/swype/startup/DownloadLanguageDelegate$3;
.super Ljava/lang/Object;
.source "DownloadLanguageDelegate.java"

# interfaces
.implements Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/DownloadLanguageDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/startup/DownloadLanguageDelegate;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/DownloadLanguageDelegate;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/startup/DownloadLanguageDelegate;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate$3;->this$0:Lcom/nuance/swype/startup/DownloadLanguageDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final languageUpdated(I)V
    .registers 10
    .param p1, "languageId"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 144
    # getter for: Lcom/nuance/swype/startup/DownloadLanguageDelegate;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v2

    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "languageUpdated...languageId: "

    aput-object v1, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v6

    const-string/jumbo v1, "...downloadingLanguage status: "

    aput-object v1, v3, v7

    const/4 v4, 0x3

    iget-object v1, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate$3;->this$0:Lcom/nuance/swype/startup/DownloadLanguageDelegate;

    .line 145
    # getter for: Lcom/nuance/swype/startup/DownloadLanguageDelegate;->downloadingLanguage:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    invoke-static {v1}, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->access$400(Lcom/nuance/swype/startup/DownloadLanguageDelegate;)Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    move-result-object v1

    if-nez v1, :cond_6b

    const-string/jumbo v1, "null"

    :goto_26
    aput-object v1, v3, v4

    .line 144
    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 146
    iget-object v1, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate$3;->this$0:Lcom/nuance/swype/startup/DownloadLanguageDelegate;

    # getter for: Lcom/nuance/swype/startup/DownloadLanguageDelegate;->downloadLanguageId:I
    invoke-static {v1}, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->access$200(Lcom/nuance/swype/startup/DownloadLanguageDelegate;)I

    move-result v1

    if-ne p1, v1, :cond_6a

    iget-object v1, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate$3;->this$0:Lcom/nuance/swype/startup/DownloadLanguageDelegate;

    # getter for: Lcom/nuance/swype/startup/DownloadLanguageDelegate;->downloadingLanguage:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    invoke-static {v1}, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->access$400(Lcom/nuance/swype/startup/DownloadLanguageDelegate;)Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    move-result-object v1

    if-eqz v1, :cond_6a

    .line 147
    sget-object v1, Lcom/nuance/swype/startup/DownloadLanguageDelegate$5;->$SwitchMap$com$nuance$swype$connect$SDKDownloadManager$DownloadableLanguage$Status:[I

    iget-object v2, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate$3;->this$0:Lcom/nuance/swype/startup/DownloadLanguageDelegate;

    # getter for: Lcom/nuance/swype/startup/DownloadLanguageDelegate;->downloadingLanguage:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    invoke-static {v2}, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->access$400(Lcom/nuance/swype/startup/DownloadLanguageDelegate;)Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getStatus()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_f2

    .line 167
    :pswitch_50
    # getter for: Lcom/nuance/swype/startup/DownloadLanguageDelegate;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "Language download case not covered: "

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate$3;->this$0:Lcom/nuance/swype/startup/DownloadLanguageDelegate;

    # getter for: Lcom/nuance/swype/startup/DownloadLanguageDelegate;->downloadingLanguage:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    invoke-static {v3}, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->access$400(Lcom/nuance/swype/startup/DownloadLanguageDelegate;)Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getStatus()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 171
    :cond_6a
    :goto_6a
    return-void

    .line 145
    :cond_6b
    iget-object v1, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate$3;->this$0:Lcom/nuance/swype/startup/DownloadLanguageDelegate;

    # getter for: Lcom/nuance/swype/startup/DownloadLanguageDelegate;->downloadingLanguage:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    invoke-static {v1}, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->access$400(Lcom/nuance/swype/startup/DownloadLanguageDelegate;)Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getStatus()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v1

    goto :goto_26

    .line 149
    :pswitch_76
    iget-object v1, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate$3;->this$0:Lcom/nuance/swype/startup/DownloadLanguageDelegate;

    # getter for: Lcom/nuance/swype/startup/DownloadLanguageDelegate;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->access$500(Lcom/nuance/swype/startup/DownloadLanguageDelegate;)Landroid/widget/ProgressBar;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate$3;->this$0:Lcom/nuance/swype/startup/DownloadLanguageDelegate;

    # getter for: Lcom/nuance/swype/startup/DownloadLanguageDelegate;->downloadingLanguage:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    invoke-static {v2}, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->access$400(Lcom/nuance/swype/startup/DownloadLanguageDelegate;)Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_6a

    .line 154
    :pswitch_8a
    iget-object v1, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate$3;->this$0:Lcom/nuance/swype/startup/DownloadLanguageDelegate;

    # getter for: Lcom/nuance/swype/startup/DownloadLanguageDelegate;->downloadingLanguage:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    invoke-static {v1}, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->access$400(Lcom/nuance/swype/startup/DownloadLanguageDelegate;)Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v0

    .line 155
    .local v0, "lang":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v0, :cond_c2

    .line 156
    # getter for: Lcom/nuance/swype/startup/DownloadLanguageDelegate;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "languageUpdated...lang: "

    aput-object v3, v2, v5

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 157
    iget-object v1, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate$3;->this$0:Lcom/nuance/swype/startup/DownloadLanguageDelegate;

    invoke-virtual {v1}, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v1

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/InputMethods;->setCurrentLanguage(Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate$3;->this$0:Lcom/nuance/swype/startup/DownloadLanguageDelegate;

    iget-object v1, v1, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->mStartupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    invoke-virtual {v1}, Lcom/nuance/swype/startup/StartupSequenceInfo;->setLanguageSelectedAndInstalled$1385ff()V

    .line 160
    :cond_c2
    iget-object v1, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate$3;->this$0:Lcom/nuance/swype/startup/DownloadLanguageDelegate;

    # getter for: Lcom/nuance/swype/startup/DownloadLanguageDelegate;->downloadLanguageId:I
    invoke-static {v1}, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->access$200(Lcom/nuance/swype/startup/DownloadLanguageDelegate;)I

    move-result v1

    if-eqz v1, :cond_e1

    iget-object v1, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate$3;->this$0:Lcom/nuance/swype/startup/DownloadLanguageDelegate;

    # getter for: Lcom/nuance/swype/startup/DownloadLanguageDelegate;->dataCallback:Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;
    invoke-static {v1}, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->access$600(Lcom/nuance/swype/startup/DownloadLanguageDelegate;)Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;

    move-result-object v1

    if-eqz v1, :cond_e1

    .line 161
    iget-object v1, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate$3;->this$0:Lcom/nuance/swype/startup/DownloadLanguageDelegate;

    # getter for: Lcom/nuance/swype/startup/DownloadLanguageDelegate;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;
    invoke-static {v1}, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->access$300(Lcom/nuance/swype/startup/DownloadLanguageDelegate;)Lcom/nuance/swype/connect/SDKDownloadManager;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate$3;->this$0:Lcom/nuance/swype/startup/DownloadLanguageDelegate;

    # getter for: Lcom/nuance/swype/startup/DownloadLanguageDelegate;->dataCallback:Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;
    invoke-static {v2}, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->access$600(Lcom/nuance/swype/startup/DownloadLanguageDelegate;)Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/SDKDownloadManager;->unregisterDataCallback(Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;)V

    .line 163
    :cond_e1
    iget-object v1, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate$3;->this$0:Lcom/nuance/swype/startup/DownloadLanguageDelegate;

    iget-object v1, v1, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    iget-object v2, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate$3;->this$0:Lcom/nuance/swype/startup/DownloadLanguageDelegate;

    iget v2, v2, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->mFlags:I

    iget-object v3, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate$3;->this$0:Lcom/nuance/swype/startup/DownloadLanguageDelegate;

    iget-object v3, v3, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->mResultData:Landroid/os/Bundle;

    invoke-interface {v1, v2, v3}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->startNextScreen(ILandroid/os/Bundle;)V

    goto/16 :goto_6a

    .line 147
    :pswitch_data_f2
    .packed-switch 0x5
        :pswitch_8a
        :pswitch_50
        :pswitch_76
        :pswitch_8a
    .end packed-switch
.end method

.method public final listUpdated()V
    .registers 1

    .prologue
    .line 140
    return-void
.end method

.method public final onError(I)V
    .registers 2
    .param p1, "reason"    # I

    .prologue
    .line 176
    return-void
.end method
