.class public final Lcom/nuance/swype/plugin/MainApkResourceBroker;
.super Ljava/lang/Object;
.source "MainApkResourceBroker.java"


# static fields
.field static sLocalResBroker:Lcom/nuance/swype/plugin/MainApkResourceBroker;


# instance fields
.field mContext:Landroid/content/Context;

.field public mHasInited:Z

.field mResourceAccessor:Lcom/nuance/swype/plugin/ThemeResourceAccessor;

.field final mThemeStyleableAttrResIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mThemeStyleableAttrResIds:Ljava/util/HashSet;

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mHasInited:Z

    return-void
.end method

.method public static getInstance()Lcom/nuance/swype/plugin/MainApkResourceBroker;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/nuance/swype/plugin/MainApkResourceBroker;->sLocalResBroker:Lcom/nuance/swype/plugin/MainApkResourceBroker;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/nuance/swype/plugin/MainApkResourceBroker;

    invoke-direct {v0}, Lcom/nuance/swype/plugin/MainApkResourceBroker;-><init>()V

    sput-object v0, Lcom/nuance/swype/plugin/MainApkResourceBroker;->sLocalResBroker:Lcom/nuance/swype/plugin/MainApkResourceBroker;

    .line 24
    :cond_0
    sget-object v0, Lcom/nuance/swype/plugin/MainApkResourceBroker;->sLocalResBroker:Lcom/nuance/swype/plugin/MainApkResourceBroker;

    return-object v0
.end method
