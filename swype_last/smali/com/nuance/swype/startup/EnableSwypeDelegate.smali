.class public Lcom/nuance/swype/startup/EnableSwypeDelegate;
.super Lcom/nuance/swype/startup/StartupDelegate;
.source "EnableSwypeDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/startup/EnableSwypeDelegate$ImeSettingsHandler;
    }
.end annotation


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private displayedInputMethods:Z

.field private mSettingsHandler:Lcom/nuance/swype/startup/EnableSwypeDelegate$ImeSettingsHandler;

.field private showPopupTip:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-string/jumbo v0, "EnableSwypeDelegate"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/startup/EnableSwypeDelegate;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/nuance/swype/startup/StartupDelegate;-><init>()V

    return-void
.end method

.method static synthetic access$002$32f5abfe(Lcom/nuance/swype/startup/EnableSwypeDelegate;)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/startup/EnableSwypeDelegate;

    .prologue
    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/startup/EnableSwypeDelegate;->displayedInputMethods:Z

    return v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/startup/EnableSwypeDelegate;)Lcom/nuance/swype/startup/EnableSwypeDelegate$ImeSettingsHandler;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/startup/EnableSwypeDelegate;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nuance/swype/startup/EnableSwypeDelegate;->mSettingsHandler:Lcom/nuance/swype/startup/EnableSwypeDelegate$ImeSettingsHandler;

    return-object v0
.end method

.method static synthetic access$200()Lcom/nuance/swype/util/LogManager$Log;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/nuance/swype/startup/EnableSwypeDelegate;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static newInstance(Landroid/os/Bundle;)Lcom/nuance/swype/startup/EnableSwypeDelegate;
    .registers 2
    .param p0, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    new-instance v0, Lcom/nuance/swype/startup/EnableSwypeDelegate;

    invoke-direct {v0}, Lcom/nuance/swype/startup/EnableSwypeDelegate;-><init>()V

    .line 39
    .local v0, "f":Lcom/nuance/swype/startup/EnableSwypeDelegate;
    invoke-virtual {v0, p0}, Lcom/nuance/swype/startup/EnableSwypeDelegate;->setArguments(Landroid/os/Bundle;)V

    .line 40
    return-object v0
.end method

.method private validateStatus()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 153
    iget-object v3, p0, Lcom/nuance/swype/startup/EnableSwypeDelegate;->mStartupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    invoke-virtual {v3}, Lcom/nuance/swype/startup/StartupSequenceInfo;->isSwypeEnabled()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 154
    iget-object v3, p0, Lcom/nuance/swype/startup/EnableSwypeDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    iget v4, p0, Lcom/nuance/swype/startup/EnableSwypeDelegate;->mFlags:I

    iget-object v5, p0, Lcom/nuance/swype/startup/EnableSwypeDelegate;->mResultData:Landroid/os/Bundle;

    invoke-interface {v3, v4, v5}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->startNextScreen(ILandroid/os/Bundle;)V

    .line 163
    :cond_12
    :goto_12
    iput-boolean v6, p0, Lcom/nuance/swype/startup/EnableSwypeDelegate;->showPopupTip:Z

    .line 164
    return-void

    .line 155
    :cond_15
    iget-boolean v3, p0, Lcom/nuance/swype/startup/EnableSwypeDelegate;->showPopupTip:Z

    if-eqz v3, :cond_12

    .line 156
    invoke-virtual {p0}, Lcom/nuance/swype/startup/EnableSwypeDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$string;->ime_name:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "version":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nuance/swype/startup/EnableSwypeDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$string;->startup_enable_swype_toast:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 158
    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "msg":Ljava/lang/String;
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 160
    .local v0, "displaySize":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/nuance/swype/startup/EnableSwypeDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 161
    invoke-virtual {p0}, Lcom/nuance/swype/startup/EnableSwypeDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget v4, v0, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, v4, 0x2

    invoke-static {v3, v1, v6, v4}, Lcom/nuance/swype/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    goto :goto_12
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 176
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/startup/StartupDelegate;->onActivityResult(IILandroid/content/Intent;)V

    .line 177
    if-nez p1, :cond_8

    .line 178
    invoke-direct {p0}, Lcom/nuance/swype/startup/EnableSwypeDelegate;->validateStatus()V

    .line 180
    :cond_8
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/nuance/swype/startup/StartupDelegate;->onAttach(Landroid/app/Activity;)V

    .line 47
    new-instance v0, Lcom/nuance/swype/startup/EnableSwypeDelegate$ImeSettingsHandler;

    invoke-virtual {p0}, Lcom/nuance/swype/startup/EnableSwypeDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/startup/EnableSwypeDelegate$ImeSettingsHandler;-><init>(Lcom/nuance/swype/startup/EnableSwypeDelegate;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/EnableSwypeDelegate;->mSettingsHandler:Lcom/nuance/swype/startup/EnableSwypeDelegate$ImeSettingsHandler;

    .line 48
    return-void
.end method

.method public final onBackPressed()V
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/nuance/swype/startup/EnableSwypeDelegate;->mStartupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/StartupSequenceInfo;->isSwypeEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    .line 169
    invoke-virtual {p0}, Lcom/nuance/swype/startup/EnableSwypeDelegate;->showSelectSwypeDialog()V

    .line 171
    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/startup/EnableSwypeDelegate;->showPopupTip:Z

    .line 172
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 53
    invoke-virtual {p0}, Lcom/nuance/swype/startup/EnableSwypeDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$string;->ime_name:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "version":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nuance/swype/startup/EnableSwypeDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$string;->startup_enable_swype:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 55
    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "msg":Ljava/lang/String;
    sget v3, Lcom/nuance/swype/input/R$layout;->startup_template_three_quarters:I

    sget v4, Lcom/nuance/swype/input/R$layout;->startup_enable_swype:I

    invoke-virtual {p0, p1, v3, v4, v1}, Lcom/nuance/swype/startup/EnableSwypeDelegate;->loadTemplateToContentView(Landroid/view/LayoutInflater;IILjava/lang/String;)V

    .line 58
    iget-object v3, p0, Lcom/nuance/swype/startup/EnableSwypeDelegate;->view:Landroid/view/View;

    sget v4, Lcom/nuance/swype/input/R$id;->enable_swype_button:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 59
    .local v0, "enableSwypeButton":Landroid/widget/ImageView;
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 60
    new-instance v3, Lcom/nuance/swype/startup/EnableSwypeDelegate$1;

    invoke-direct {v3, p0}, Lcom/nuance/swype/startup/EnableSwypeDelegate$1;-><init>(Lcom/nuance/swype/startup/EnableSwypeDelegate;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/startup/StartupDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v3

    return-object v3
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 81
    invoke-super {p0}, Lcom/nuance/swype/startup/StartupDelegate;->onResume()V

    .line 83
    iget-boolean v0, p0, Lcom/nuance/swype/startup/EnableSwypeDelegate;->displayedInputMethods:Z

    if-eqz v0, :cond_10

    .line 84
    iget-object v0, p0, Lcom/nuance/swype/startup/EnableSwypeDelegate;->mSettingsHandler:Lcom/nuance/swype/startup/EnableSwypeDelegate$ImeSettingsHandler;

    .line 1142
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/startup/EnableSwypeDelegate$ImeSettingsHandler;->sendEmptyMessage(I)Z

    .line 85
    invoke-direct {p0}, Lcom/nuance/swype/startup/EnableSwypeDelegate;->validateStatus()V

    .line 88
    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/startup/EnableSwypeDelegate;->displayedInputMethods:Z

    .line 89
    return-void
.end method
