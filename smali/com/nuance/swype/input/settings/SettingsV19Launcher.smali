.class public Lcom/nuance/swype/input/settings/SettingsV19Launcher;
.super Lcom/nuance/swype/input/settings/SettingsV11Launcher;
.source "SettingsV19Launcher.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsV11Launcher;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method protected getSettingsClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/preference/PreferenceActivity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    const-class v0, Lcom/nuance/swype/input/settings/SettingsV19;

    return-object v0
.end method
