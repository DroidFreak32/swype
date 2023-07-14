.class final Landroid/support/customtabs/CustomTabsServiceConnection$1;
.super Landroid/support/customtabs/CustomTabsClient;
.source "CustomTabsServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/customtabs/CustomTabsServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/customtabs/CustomTabsServiceConnection;


# direct methods
.method constructor <init>(Landroid/support/customtabs/CustomTabsServiceConnection;Landroid/support/customtabs/ICustomTabsService;Landroid/content/ComponentName;)V
    .locals 0
    .param p2, "x0"    # Landroid/support/customtabs/ICustomTabsService;
    .param p3, "x1"    # Landroid/content/ComponentName;

    .prologue
    .line 33
    iput-object p1, p0, Landroid/support/customtabs/CustomTabsServiceConnection$1;->this$0:Landroid/support/customtabs/CustomTabsServiceConnection;

    invoke-direct {p0, p2, p3}, Landroid/support/customtabs/CustomTabsClient;-><init>(Landroid/support/customtabs/ICustomTabsService;Landroid/content/ComponentName;)V

    return-void
.end method
