.class final Lcom/nuance/swype/startup/ChooseLanguageDelegate$8;
.super Ljava/lang/Object;
.source "ChooseLanguageDelegate.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/startup/ChooseLanguageDelegate;->showActiveLanguagesList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/startup/ChooseLanguageDelegate;

.field final synthetic val$availableLanguages:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/ChooseLanguageDelegate;Ljava/util/List;)V
    .registers 3
    .param p1, "this$0"    # Lcom/nuance/swype/startup/ChooseLanguageDelegate;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate$8;->this$0:Lcom/nuance/swype/startup/ChooseLanguageDelegate;

    iput-object p2, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate$8;->val$availableLanguages:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 15
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    # getter for: Lcom/nuance/swype/startup/ChooseLanguageDelegate;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->access$600()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "onItemClick: "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 271
    iget-object v5, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate$8;->this$0:Lcom/nuance/swype/startup/ChooseLanguageDelegate;

    invoke-virtual {v5}, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/connect/Connect;->getDownloadManager()Lcom/nuance/swype/connect/SDKDownloadManager;

    move-result-object v5

    .line 272
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/nuance/swype/connect/SDKDownloadManager;->getSettingDownloadLanguageList(Z)Ljava/util/Map;

    move-result-object v2

    .line 273
    .local v2, "downloadableLanguageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;>;"
    iget-object v5, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate$8;->val$availableLanguages:Ljava/util/List;

    invoke-interface {v5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/InputMethods$Language;

    .line 274
    .local v3, "language":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v4

    .line 275
    .local v4, "languageId":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    .line 277
    .local v1, "downloadableLanguage":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    # getter for: Lcom/nuance/swype/startup/ChooseLanguageDelegate;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->access$600()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "onItemClick: language: "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, v3, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 279
    iget-object v5, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate$8;->this$0:Lcom/nuance/swype/startup/ChooseLanguageDelegate;

    invoke-virtual {v5}, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 280
    .local v0, "app":Lcom/nuance/swype/input/AppPreferences;
    if-eqz v1, :cond_e4

    .line 281
    invoke-virtual {v1}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getStatus()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v5

    sget-object v6, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->INSTALLED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    if-eq v5, v6, :cond_81

    .line 282
    invoke-virtual {v1}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getStatus()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v5

    sget-object v6, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->UPDATED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    if-eq v5, v6, :cond_81

    .line 283
    invoke-virtual {v1}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getStatus()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v5

    sget-object v6, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->UPDATE_AVAILABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    if-eq v5, v6, :cond_81

    .line 284
    invoke-virtual {v1}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getStatus()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v5

    sget-object v6, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->COMPLETE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    if-ne v5, v6, :cond_b9

    .line 286
    :cond_81
    # getter for: Lcom/nuance/swype/startup/ChooseLanguageDelegate;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->access$600()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "onItemClick: detected downloadable language as already installed"

    aput-object v8, v6, v7

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 289
    iget-object v5, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate$8;->this$0:Lcom/nuance/swype/startup/ChooseLanguageDelegate;

    invoke-virtual {v5}, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v5

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/InputMethods;->setCurrentLanguage(Ljava/lang/String;)V

    .line 290
    iget-object v5, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate$8;->this$0:Lcom/nuance/swype/startup/ChooseLanguageDelegate;

    iget-object v5, v5, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->mStartupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    invoke-virtual {v5}, Lcom/nuance/swype/startup/StartupSequenceInfo;->setLanguageSelectedAndInstalled$1385ff()V

    .line 310
    :goto_a9
    iget-object v5, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate$8;->this$0:Lcom/nuance/swype/startup/ChooseLanguageDelegate;

    iget-object v5, v5, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    iget-object v6, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate$8;->this$0:Lcom/nuance/swype/startup/ChooseLanguageDelegate;

    iget v6, v6, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->mFlags:I

    iget-object v7, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate$8;->this$0:Lcom/nuance/swype/startup/ChooseLanguageDelegate;

    iget-object v7, v7, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->mResultData:Landroid/os/Bundle;

    invoke-interface {v5, v6, v7}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->startNextScreen(ILandroid/os/Bundle;)V

    .line 311
    :cond_b8
    return-void

    .line 295
    :cond_b9
    iget-object v5, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate$8;->this$0:Lcom/nuance/swype/startup/ChooseLanguageDelegate;

    invoke-static {v5}, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->access$700(Lcom/nuance/swype/startup/ChooseLanguageDelegate;)Z

    move-result v5

    if-eqz v5, :cond_b8

    .line 298
    # getter for: Lcom/nuance/swype/startup/ChooseLanguageDelegate;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->access$600()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "onItemClick: preparing downloadable language for download"

    aput-object v8, v6, v7

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 299
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/nuance/swype/input/AppPreferences;->setStartupSequenceDownloadLanguageDisplayName(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/nuance/swype/input/AppPreferences;->setStartupSequenceDownloadLanguageID(Ljava/lang/String;)V

    goto :goto_a9

    .line 303
    :cond_e4
    # getter for: Lcom/nuance/swype/startup/ChooseLanguageDelegate;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->access$600()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "onItemClick: detected built-in language"

    aput-object v8, v6, v7

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 306
    iget-object v5, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate$8;->this$0:Lcom/nuance/swype/startup/ChooseLanguageDelegate;

    invoke-virtual {v5}, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v5

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/InputMethods;->setCurrentLanguage(Ljava/lang/String;)V

    .line 307
    iget-object v5, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate$8;->this$0:Lcom/nuance/swype/startup/ChooseLanguageDelegate;

    iget-object v5, v5, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->mStartupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    invoke-virtual {v5}, Lcom/nuance/swype/startup/StartupSequenceInfo;->setLanguageSelectedAndInstalled$1385ff()V

    goto :goto_a9
.end method
