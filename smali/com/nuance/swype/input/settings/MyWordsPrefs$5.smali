.class Lcom/nuance/swype/input/settings/MyWordsPrefs$5;
.super Ljava/lang/Object;
.source "MyWordsPrefs.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/MyWordsPrefs;->addDlmExportPreference(Landroid/preference/PreferenceCategory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

.field final currentLanguage:I

.field final file:Ljava/io/File;

.field final synthetic this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/MyWordsPrefs;)V
    .locals 3

    .prologue
    .line 289
    iput-object p1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$5;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$5;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$000(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getXT9CoreAlphaInputSession()Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$5;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    .line 291
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$5;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$000(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$5;->currentLanguage:I

    .line 293
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$5;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$000(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "exported_dlm.bin"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$5;->file:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    .line 297
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$5;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    iget v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$5;->currentLanguage:I

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setLanguage(I)Lcom/nuance/input/swypecorelib/XT9Status;

    .line 300
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$5;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$5;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlmExport(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$5;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    const-string v1, "Failed to export. DLM may not available."

    invoke-static {v0, v1, v4}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$200(Lcom/nuance/swype/input/settings/MyWordsPrefs;Ljava/lang/String;Z)V

    .line 308
    :goto_0
    return v4

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$5;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DLM export to:\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$5;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$200(Lcom/nuance/swype/input/settings/MyWordsPrefs;Ljava/lang/String;Z)V

    goto :goto_0

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$5;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    const-string v1, "sd card is not mounted or not available."

    invoke-static {v0, v1, v4}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$200(Lcom/nuance/swype/input/settings/MyWordsPrefs;Ljava/lang/String;Z)V

    goto :goto_0
.end method
