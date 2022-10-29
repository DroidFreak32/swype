.class public Lcom/nuance/swype/input/settings/SettingsV19Launcher;
.super Lcom/nuance/swype/input/settings/SettingsV11Launcher;
.source "SettingsV19Launcher.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsV11Launcher;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method protected getSettingsClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/FragmentActivity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    const-class v0, Lcom/nuance/swype/input/settings/SettingsV19;

    return-object v0
.end method
