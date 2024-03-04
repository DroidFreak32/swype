.class public Lcom/nuance/swype/input/DatabaseConfig$DbFileDetector;
.super Ljava/lang/Object;
.source "DatabaseConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/DatabaseConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DbFileDetector"
.end annotation


# instance fields
.field private final app:Lcom/nuance/swype/input/IMEApplication;

.field private final assetFileNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final privateFileNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 868
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 869
    sget-object v0, Lcom/nuance/swype/input/DatabaseConfig;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 871
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/DatabaseConfig$DbFileDetector;->app:Lcom/nuance/swype/input/IMEApplication;

    .line 872
    iget-object v0, p0, Lcom/nuance/swype/input/DatabaseConfig$DbFileDetector;->app:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getPrivateFiles()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/DatabaseConfig$DbFileDetector;->privateFileNames:Ljava/util/Set;

    .line 873
    iget-object v0, p0, Lcom/nuance/swype/input/DatabaseConfig$DbFileDetector;->app:Lcom/nuance/swype/input/IMEApplication;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->getAssetFileNames(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/DatabaseConfig$DbFileDetector;->assetFileNames:Ljava/util/Set;

    .line 875
    sget-object v0, Lcom/nuance/swype/input/DatabaseConfig;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 876
    return-void
.end method


# virtual methods
.method protected dbFileIsInApk(Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;)Z
    .locals 2
    .param p1, "databaseElement"    # Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .prologue
    .line 885
    iget-object v0, p0, Lcom/nuance/swype/input/DatabaseConfig$DbFileDetector;->assetFileNames:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getAssetFileName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public fileExists(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 889
    iget-object v0, p0, Lcom/nuance/swype/input/DatabaseConfig$DbFileDetector;->privateFileNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
