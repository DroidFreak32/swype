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

.field final synthetic this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/MyWordsPrefs;)V
    .registers 3
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/MyWordsPrefs;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$5;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$5;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    # getter for: Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$100(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getXT9CoreAlphaInputSession()Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$5;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    .line 310
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$5;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    # getter for: Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$100(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 311
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$5;->currentLanguage:I

    .line 310
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 10
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 314
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_19

    iget-object v3, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$5;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    # getter for: Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$100(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_19

    .line 334
    :goto_18
    return v1

    .line 319
    :cond_19
    const-string/jumbo v3, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    .line 320
    iget-object v3, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$5;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    iget v4, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$5;->currentLanguage:I

    invoke-virtual {v3, v4}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setLanguage(I)Lcom/nuance/input/swypecorelib/XT9Status;

    .line 321
    iget-object v3, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$5;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    # getter for: Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$100(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_3b

    move v1, v2

    .line 322
    goto :goto_18

    .line 324
    :cond_3b
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$5;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    # getter for: Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$100(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "exported_dlm.bin"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    .local v0, "file":Ljava/io/File;
    iget-object v3, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$5;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlmExport(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_6a

    .line 327
    iget-object v2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$5;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    const-string/jumbo v3, "Failed to export. DLM may not available."

    # invokes: Lcom/nuance/swype/input/settings/MyWordsPrefs;->showDlmExportMessage(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$300(Lcom/nuance/swype/input/settings/MyWordsPrefs;Ljava/lang/String;Z)V

    goto :goto_18

    .line 329
    :cond_6a
    iget-object v3, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$5;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "DLM export to:\n"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/nuance/swype/input/settings/MyWordsPrefs;->showDlmExportMessage(Ljava/lang/String;Z)V
    invoke-static {v3, v4, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$300(Lcom/nuance/swype/input/settings/MyWordsPrefs;Ljava/lang/String;Z)V

    goto :goto_18

    .line 332
    .end local v0    # "file":Ljava/io/File;
    :cond_84
    iget-object v2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$5;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    const-string/jumbo v3, "sd card is not mounted or not available."

    # invokes: Lcom/nuance/swype/input/settings/MyWordsPrefs;->showDlmExportMessage(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$300(Lcom/nuance/swype/input/settings/MyWordsPrefs;Ljava/lang/String;Z)V

    goto :goto_18
.end method
