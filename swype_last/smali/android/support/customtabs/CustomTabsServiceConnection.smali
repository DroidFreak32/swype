.class public abstract Landroid/support/customtabs/CustomTabsServiceConnection;
.super Ljava/lang/Object;
.source "CustomTabsServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onCustomTabsServiceConnected$51e7d8cd(Landroid/support/customtabs/CustomTabsClient;)V
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 32
    new-instance v0, Landroid/support/customtabs/CustomTabsServiceConnection$1;

    invoke-static {p2}, Landroid/support/customtabs/ICustomTabsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/customtabs/ICustomTabsService;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroid/support/customtabs/CustomTabsServiceConnection$1;-><init>(Landroid/support/customtabs/CustomTabsServiceConnection;Landroid/support/customtabs/ICustomTabsService;Landroid/content/ComponentName;)V

    invoke-virtual {p0, v0}, Landroid/support/customtabs/CustomTabsServiceConnection;->onCustomTabsServiceConnected$51e7d8cd(Landroid/support/customtabs/CustomTabsClient;)V

    .line 35
    return-void
.end method
