.class Lcom/nuance/swype/input/settings/Settings$2;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/Settings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/Settings;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/Settings;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/nuance/swype/input/settings/Settings$2;->this$0:Lcom/nuance/swype/input/settings/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateAvailable()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Settings$2;->this$0:Lcom/nuance/swype/input/settings/Settings;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/Settings;->access$000(Lcom/nuance/swype/input/settings/Settings;)V

    .line 69
    return-void
.end method
