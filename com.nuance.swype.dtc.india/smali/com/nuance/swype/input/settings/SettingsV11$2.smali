.class Lcom/nuance/swype/input/settings/SettingsV11$2;
.super Ljava/lang/Object;
.source "SettingsV11.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/SettingsV11;->showNetworkFailureDialog()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/SettingsV11;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/SettingsV11;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/SettingsV11;

    .prologue
    .line 422
    iput-object p1, p0, Lcom/nuance/swype/input/settings/SettingsV11$2;->this$0:Lcom/nuance/swype/input/settings/SettingsV11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 425
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11$2;->this$0:Lcom/nuance/swype/input/settings/SettingsV11;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/SettingsV11;->access$500(Lcom/nuance/swype/input/settings/SettingsV11;)V

    .line 426
    return-void
.end method
