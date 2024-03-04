.class Lcom/nuance/swype/input/settings/SettingsV11$1;
.super Ljava/lang/Object;
.source "SettingsV11.java"

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/SettingsV11;->onResume()V
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

    .prologue
    .line 165
    iput-object p1, p0, Lcom/nuance/swype/input/settings/SettingsV11$1;->this$0:Lcom/nuance/swype/input/settings/SettingsV11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateAvailable()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11$1;->this$0:Lcom/nuance/swype/input/settings/SettingsV11;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/SettingsV11;->invalidateHeaders()V

    .line 169
    return-void
.end method
