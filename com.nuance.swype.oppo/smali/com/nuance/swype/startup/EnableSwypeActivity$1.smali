.class final Lcom/nuance/swype/startup/EnableSwypeActivity$1;
.super Ljava/lang/Object;
.source "EnableSwypeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/EnableSwypeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/nuance/swype/startup/EnableSwypeActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/EnableSwypeActivity;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/nuance/swype/startup/EnableSwypeActivity$1;->this$0:Lcom/nuance/swype/startup/EnableSwypeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 83
    iget-object v1, p0, Lcom/nuance/swype/startup/EnableSwypeActivity$1;->this$0:Lcom/nuance/swype/startup/EnableSwypeActivity;

    invoke-virtual {v1}, Lcom/nuance/swype/startup/EnableSwypeActivity;->isSwypeEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/nuance/swype/startup/EnableSwypeActivity$1;->this$0:Lcom/nuance/swype/startup/EnableSwypeActivity;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/startup/EnableSwypeActivity;->startActivity(Landroid/content/Intent;)V

    .line 93
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/startup/EnableSwypeActivity$1;->this$0:Lcom/nuance/swype/startup/EnableSwypeActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/nuance/swype/startup/EnableSwypeActivity$1;->this$0:Lcom/nuance/swype/startup/EnableSwypeActivity;

    const-class v4, Lcom/nuance/swype/startup/SelectSwypeActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/nuance/swype/startup/EnableSwypeActivity;->startActivity(Landroid/content/Intent;)V

    .line 88
    iget-object v1, p0, Lcom/nuance/swype/startup/EnableSwypeActivity$1;->this$0:Lcom/nuance/swype/startup/EnableSwypeActivity;

    invoke-static {v1}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v1

    sget-object v2, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->SelectSwype:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    invoke-virtual {v2}, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/AppPreferences;->setStartupSequenceStatus(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/nuance/swype/startup/EnableSwypeActivity$1;->this$0:Lcom/nuance/swype/startup/EnableSwypeActivity;

    invoke-virtual {v1}, Lcom/nuance/swype/startup/EnableSwypeActivity;->finish()V

    goto :goto_0
.end method
