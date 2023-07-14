.class final Lcom/nuance/swype/startup/BackupAndSyncDelegate$3;
.super Ljava/lang/Object;
.source "BackupAndSyncDelegate.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/startup/BackupAndSyncDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/startup/BackupAndSyncDelegate;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/BackupAndSyncDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/startup/BackupAndSyncDelegate;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate$3;->this$0:Lcom/nuance/swype/startup/BackupAndSyncDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 127
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate$3;->this$0:Lcom/nuance/swype/startup/BackupAndSyncDelegate;

    invoke-static {v0}, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->access$100(Lcom/nuance/swype/startup/BackupAndSyncDelegate;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 128
    new-instance v1, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;-><init>()V

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;-><init>()V

    .line 1000
    iput-boolean v2, v0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;->cQ:Z

    .line 2000
    iput-boolean v3, v0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;->cP:Z

    .line 3000
    iput-boolean v2, v0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;->mShowCancelButton:Z

    .line 134
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;->build()Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    move-result-object v0

    .line 4000
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    iput-object v0, v1, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->cV:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    .line 5000
    iput-boolean v2, v1, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->cW:Z

    .line 6000
    iput-boolean v3, v1, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->cX:Z

    .line 136
    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v2, "https://accounts.google.com"

    aput-object v2, v0, v3

    .line 7000
    iput-object v0, v1, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->cS:[Ljava/lang/String;

    .line 8000
    iget-object v0, v1, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->cS:[Ljava/lang/String;

    if-nez v0, :cond_0

    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, v1, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->cS:[Ljava/lang/String;

    :cond_0
    iget-boolean v0, v1, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->cW:Z

    if-nez v0, :cond_1

    iget-boolean v0, v1, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->cX:Z

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->cS:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "At least one authentication method must be specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v8, Lcom/google/android/gms/auth/api/credentials/HintRequest;

    invoke-direct {v8, v1, v3}, Lcom/google/android/gms/auth/api/credentials/HintRequest;-><init>(Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;B)V

    .line 140
    .local v8, "hintRequest":Lcom/google/android/gms/auth/api/credentials/HintRequest;
    sget-object v0, Lcom/google/android/gms/auth/api/Auth;->CredentialsApi:Lcom/google/android/gms/auth/api/credentials/CredentialsApi;

    iget-object v1, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate$3;->this$0:Lcom/nuance/swype/startup/BackupAndSyncDelegate;

    .line 141
    invoke-static {v1}, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->access$200(Lcom/nuance/swype/startup/BackupAndSyncDelegate;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, v8}, Lcom/google/android/gms/auth/api/credentials/CredentialsApi;->getHintPickerIntent(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/credentials/HintRequest;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 143
    .local v9, "intent":Landroid/app/PendingIntent;
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate$3;->this$0:Lcom/nuance/swype/startup/BackupAndSyncDelegate;

    invoke-static {v0}, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->access$300(Lcom/nuance/swype/startup/BackupAndSyncDelegate;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate$3;->this$0:Lcom/nuance/swype/startup/BackupAndSyncDelegate;

    invoke-static {v0}, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->access$300(Lcom/nuance/swype/startup/BackupAndSyncDelegate;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate$3;->this$0:Lcom/nuance/swype/startup/BackupAndSyncDelegate;

    invoke-static {v0}, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->access$102$7e8f9767(Lcom/nuance/swype/startup/BackupAndSyncDelegate;)Z

    .line 152
    .end local v8    # "hintRequest":Lcom/google/android/gms/auth/api/credentials/HintRequest;
    .end local v9    # "intent":Landroid/app/PendingIntent;
    :cond_3
    return-void

    .line 146
    .restart local v8    # "hintRequest":Lcom/google/android/gms/auth/api/credentials/HintRequest;
    .restart local v9    # "intent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v7

    .line 147
    .local v7, "e":Landroid/content/IntentSender$SendIntentException;
    invoke-static {}, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string/jumbo v1, "Could not start hint picker Intent"

    invoke-interface {v0, v1, v7}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
