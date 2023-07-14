.class public Lcom/nuance/swype/input/PermissionRequestActivity;
.super Landroid/app/Activity;
.source "PermissionRequestActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation


# static fields
.field private static final PERMISSION_REQUEST_RECORD_AUDIO:I

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private isPermissionDialogRationale:Z

.field private postDNSADlg:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string/jumbo v0, "PermissionRequestActivity"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/PermissionRequestActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private recordUserActionForPermissionDialog(I[Ljava/lang/String;[I)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 119
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 121
    const-string/jumbo v2, "android.permission.RECORD_AUDIO"

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/PermissionRequestActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    .line 123
    .local v0, "isPermissionDialogRationale":Z
    if-nez p1, :cond_0

    array-length v2, p3

    if-eqz v2, :cond_0

    aget-object v2, p2, v4

    const-string/jumbo v3, "android.permission.RECORD_AUDIO"

    .line 124
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    aget v2, p3, v4

    if-nez v2, :cond_1

    .line 128
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;->ALLOWED:Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;

    .line 140
    .local v1, "userAction":Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;
    :goto_0
    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$Permission;->RECORD_AUDIO_KB_VOICE_KEY:Lcom/nuance/swype/usagedata/UsageData$Permission;

    invoke-static {v2, v1}, Lcom/nuance/swype/usagedata/UsageData;->recordPermissionRequest(Lcom/nuance/swype/usagedata/UsageData$Permission;Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;)V

    .line 143
    .end local v0    # "isPermissionDialogRationale":Z
    .end local v1    # "userAction":Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;
    :cond_0
    return-void

    .line 130
    .restart local v0    # "isPermissionDialogRationale":Z
    :cond_1
    if-eqz v0, :cond_2

    .line 131
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;->DENIED:Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;

    .line 138
    .restart local v1    # "userAction":Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;
    :goto_1
    iput-boolean v0, p0, Lcom/nuance/swype/input/PermissionRequestActivity;->isPermissionDialogRationale:Z

    goto :goto_0

    .line 132
    .end local v1    # "userAction":Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;
    :cond_2
    iget-boolean v2, p0, Lcom/nuance/swype/input/PermissionRequestActivity;->isPermissionDialogRationale:Z

    if-eqz v2, :cond_3

    .line 133
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;->NEVER_SHOW_AGAIN:Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;

    .restart local v1    # "userAction":Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;
    goto :goto_1

    .line 136
    .end local v1    # "userAction":Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;
    :cond_3
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;->BLOCKED:Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;

    .restart local v1    # "userAction":Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;
    goto :goto_1
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 108
    invoke-virtual {p0, v0, v0}, Lcom/nuance/swype/input/PermissionRequestActivity;->overridePendingTransition(II)V

    .line 109
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    sget v0, Lcom/nuance/swype/input/R$layout;->activity_dummy:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/PermissionRequestActivity;->setContentView(I)V

    .line 31
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 56
    iget-object v0, p0, Lcom/nuance/swype/input/PermissionRequestActivity;->postDNSADlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/PermissionRequestActivity;->postDNSADlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/nuance/swype/input/PermissionRequestActivity;->postDNSADlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 59
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/PermissionRequestActivity;->recordUserActionForPermissionDialog(I[Ljava/lang/String;[I)V

    .line 67
    if-nez p1, :cond_3

    .line 71
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p2

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 72
    aget-object v3, p2, v1

    .line 73
    .local v3, "permission":Ljava/lang/String;
    aget v4, p3, v1

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 74
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/PermissionRequestActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v4

    .line 75
    if-nez v4, :cond_1

    .line 77
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 78
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    .line 79
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$string;->perms_mic_title_2:I

    .line 80
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$string;->ok_button:I

    new-instance v6, Lcom/nuance/swype/input/PermissionRequestActivity$1;

    invoke-direct {v6, p0}, Lcom/nuance/swype/input/PermissionRequestActivity$1;-><init>(Lcom/nuance/swype/input/PermissionRequestActivity;)V

    .line 81
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 87
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/PermissionRequestActivity;->postDNSADlg:Landroid/app/AlertDialog;

    .line 89
    iget-object v4, p0, Lcom/nuance/swype/input/PermissionRequestActivity;->postDNSADlg:Landroid/app/AlertDialog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/nuance/swype/input/PermissionRequestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/nuance/swype/input/R$string;->perms_mic_desc:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 90
    invoke-virtual {p0}, Lcom/nuance/swype/input/PermissionRequestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/nuance/swype/input/R$string;->perms_enable:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 89
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v4, p0, Lcom/nuance/swype/input/PermissionRequestActivity;->postDNSADlg:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 103
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "permission":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 94
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    .restart local v3    # "permission":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/PermissionRequestActivity;->finish()V

    .line 71
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/PermissionRequestActivity;->finish()V

    goto :goto_2

    .line 101
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "permission":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/PermissionRequestActivity;->finish()V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 38
    iget-object v0, p0, Lcom/nuance/swype/input/PermissionRequestActivity;->postDNSADlg:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    .line 39
    invoke-virtual {p0}, Lcom/nuance/swype/input/PermissionRequestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.RECORD_AUDIO"

    aput-object v1, v0, v2

    invoke-static {p0, v0, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 46
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 47
    const-string/jumbo v0, "android.permission.RECORD_AUDIO"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/PermissionRequestActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/input/PermissionRequestActivity;->isPermissionDialogRationale:Z

    .line 50
    :cond_1
    return-void
.end method
