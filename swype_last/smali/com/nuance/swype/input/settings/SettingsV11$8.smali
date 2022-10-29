.class Lcom/nuance/swype/input/settings/SettingsV11$8;
.super Ljava/lang/Object;
.source "SettingsV11.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/SettingsV11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/SettingsV11;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/SettingsV11;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/SettingsV11;

    .prologue
    .line 1180
    iput-object p1, p0, Lcom/nuance/swype/input/settings/SettingsV11$8;->this$0:Lcom/nuance/swype/input/settings/SettingsV11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 1184
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_22

    .line 1190
    const/4 v0, 0x0

    .line 1192
    :goto_7
    return v0

    .line 1186
    :pswitch_8
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsV11$8;->this$0:Lcom/nuance/swype/input/settings/SettingsV11;

    # getter for: Lcom/nuance/swype/input/settings/SettingsV11;->mDrawerLayout:Lcom/nuance/swype/input/settings/HackyDrawerLayout;
    invoke-static {v1}, Lcom/nuance/swype/input/settings/SettingsV11;->access$1000(Lcom/nuance/swype/input/settings/SettingsV11;)Lcom/nuance/swype/input/settings/HackyDrawerLayout;

    move-result-object v1

    const v2, 0x800003

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/settings/HackyDrawerLayout;->openDrawer(I)V

    .line 1187
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsV11$8;->this$0:Lcom/nuance/swype/input/settings/SettingsV11;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/SettingsV11;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/UserPreferences;->setDrawerAutomaticallyOpenedOnce(Z)V

    goto :goto_7

    .line 1184
    :pswitch_data_22
    .packed-switch 0x2710
        :pswitch_8
    .end packed-switch
.end method
