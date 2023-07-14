.class public final Lcom/nuance/swype/util/storage/ThemeDataManager;
.super Ljava/lang/Object;
.source "ThemeDataManager.java"


# static fields
.field private static final manager:Lcom/nuance/swype/util/storage/ThemeDataManager;


# instance fields
.field private final themeData:Lcom/nuance/swype/util/storage/ThemeData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/nuance/swype/util/storage/ThemeDataManager;

    invoke-direct {v0}, Lcom/nuance/swype/util/storage/ThemeDataManager;-><init>()V

    sput-object v0, Lcom/nuance/swype/util/storage/ThemeDataManager;->manager:Lcom/nuance/swype/util/storage/ThemeDataManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/nuance/swype/util/storage/ThemeData;

    invoke-direct {v0}, Lcom/nuance/swype/util/storage/ThemeData;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/util/storage/ThemeDataManager;->themeData:Lcom/nuance/swype/util/storage/ThemeData;

    .line 16
    return-void
.end method

.method public static getInstance()Lcom/nuance/swype/util/storage/ThemeDataManager;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/nuance/swype/util/storage/ThemeDataManager;->manager:Lcom/nuance/swype/util/storage/ThemeDataManager;

    return-object v0
.end method
