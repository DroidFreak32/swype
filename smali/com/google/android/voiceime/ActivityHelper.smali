.class public Lcom/google/android/voiceime/ActivityHelper;
.super Landroid/app/Activity;
.source "ActivityHelper.java"


# instance fields
.field private mServiceBridge:Lcom/google/android/voiceime/ServiceBridge;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voiceime/ActivityHelper;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/voiceime/ActivityHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/voiceime/ActivityHelper;->notifyResult(Ljava/lang/String;)V

    return-void
.end method

.method private notifyResult(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/voiceime/ActivityHelper;->mServiceBridge:Lcom/google/android/voiceime/ServiceBridge;

    new-instance v0, Lcom/google/android/voiceime/ServiceBridge$ConnectionResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/voiceime/ServiceBridge$ConnectionResponse;-><init>(Landroid/content/Context;Ljava/lang/String;B)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/voiceime/ServiceHelper;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 117
    invoke-virtual {p0}, Lcom/google/android/voiceime/ActivityHelper;->finish()V

    .line 118
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 67
    if-ne p1, v4, :cond_1

    if-eqz p3, :cond_1

    const-string v1, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    const-string v1, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 71
    .local v0, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    :goto_0
    new-instance v3, Lcom/google/android/voiceime/ActivityHelper$1;

    invoke-direct {v3, p0, v1}, Lcom/google/android/voiceime/ActivityHelper$1;-><init>(Lcom/google/android/voiceime/ActivityHelper;[Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/google/android/voiceime/ActivityHelper$2;

    invoke-direct {v1, p0}, Lcom/google/android/voiceime/ActivityHelper$2;-><init>(Lcom/google/android/voiceime/ActivityHelper;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    new-instance v3, Lcom/google/android/voiceime/ActivityHelper$3;

    invoke-direct {v3, p0}, Lcom/google/android/voiceime/ActivityHelper$3;-><init>(Lcom/google/android/voiceime/ActivityHelper;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 75
    .end local v0    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-void

    .line 71
    .restart local v0    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    const v3, 0x1030071

    invoke-direct {v2, p0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 73
    .end local v0    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/voiceime/ActivityHelper;->notifyResult(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    new-instance v2, Lcom/google/android/voiceime/ServiceBridge;

    invoke-direct {v2}, Lcom/google/android/voiceime/ServiceBridge;-><init>()V

    iput-object v2, p0, Lcom/google/android/voiceime/ActivityHelper;->mServiceBridge:Lcom/google/android/voiceime/ServiceBridge;

    .line 49
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "calling_package"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const-string v2, "android.speech.extra.LANGUAGE_MODEL"

    const-string v3, "free_form"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const-string v2, "android.speech.extra.MAX_RESULTS"

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 56
    if-eqz p1, :cond_0

    .line 57
    const-string v2, "android.speech.extra.LANGUAGE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "languageLocale":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 59
    const-string v2, "android.speech.extra.LANGUAGE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    .end local v1    # "languageLocale":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/google/android/voiceime/ActivityHelper;->startActivityForResult(Landroid/content/Intent;I)V

    .line 63
    return-void
.end method
