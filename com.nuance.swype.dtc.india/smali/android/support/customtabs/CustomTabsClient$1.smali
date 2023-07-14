.class final Landroid/support/customtabs/CustomTabsClient$1;
.super Landroid/support/customtabs/ICustomTabsCallback$Stub;
.source "CustomTabsClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/customtabs/CustomTabsClient;->newSession$6f4c7b26()Landroid/support/customtabs/CustomTabsSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/customtabs/CustomTabsClient;

.field final synthetic val$callback:Landroid/support/customtabs/CustomTabsCallback;


# direct methods
.method constructor <init>(Landroid/support/customtabs/CustomTabsClient;)V
    .locals 1

    .prologue
    .line 89
    iput-object p1, p0, Landroid/support/customtabs/CustomTabsClient$1;->this$0:Landroid/support/customtabs/CustomTabsClient;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/customtabs/CustomTabsClient$1;->val$callback:Landroid/support/customtabs/CustomTabsCallback;

    invoke-direct {p0}, Landroid/support/customtabs/ICustomTabsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "callbackName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 98
    return-void
.end method

.method public final onNavigationEvent(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "navigationEvent"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 92
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsClient$1;->val$callback:Landroid/support/customtabs/CustomTabsCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/customtabs/CustomTabsClient$1;->val$callback:Landroid/support/customtabs/CustomTabsCallback;

    invoke-virtual {v0, p1, p2}, Landroid/support/customtabs/CustomTabsCallback;->onNavigationEvent(ILandroid/os/Bundle;)V

    .line 93
    :cond_0
    return-void
.end method
