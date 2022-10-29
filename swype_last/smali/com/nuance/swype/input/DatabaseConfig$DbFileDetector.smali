.class public Lcom/nuance/swype/input/DatabaseConfig$DbFileDetector;
.super Ljava/lang/Object;
.source "DatabaseConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/DatabaseConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
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

.field private loadExternalPath:Z

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
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loadExternal"    # Z

    .prologue
    .line 909
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 910
    sget-object v0, Lcom/nuance/swype/input/DatabaseConfig;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 912
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/DatabaseConfig$DbFileDetector;->app:Lcom/nuance/swype/input/IMEApplication;

    .line 913
    iget-object v0, p0, Lcom/nuance/swype/input/DatabaseConfig$DbFileDetector;->app:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getPrivateFiles()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/DatabaseConfig$DbFileDetector;->privateFileNames:Ljava/util/Set;

    .line 914
    iget-object v0, p0, Lcom/nuance/swype/input/DatabaseConfig$DbFileDetector;->app:Lcom/nuance/swype/input/IMEApplication;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->getAssetFileNames(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/DatabaseConfig$DbFileDetector;->assetFileNames:Ljava/util/Set;

    .line 915
    iput-boolean p2, p0, Lcom/nuance/swype/input/DatabaseConfig$DbFileDetector;->loadExternalPath:Z

    .line 917
    sget-object v0, Lcom/nuance/swype/input/DatabaseConfig;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 918
    return-void
.end method


# virtual methods
.method protected dbFileIsInApk(Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;)Z
    .registers 4
    .param p1, "databaseElement"    # Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .prologue
    .line 927
    iget-object v0, p0, Lcom/nuance/swype/input/DatabaseConfig$DbFileDetector;->assetFileNames:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getAssetFileName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected dbFileIsInExternalPath(Ljava/lang/String;)Z
    .registers 5
    .param p1, "externalFile"    # Ljava/lang/String;

    .prologue
    .line 931
    iget-boolean v0, p0, Lcom/nuance/swype/input/DatabaseConfig$DbFileDetector;->loadExternalPath:Z

    if-eqz v0, :cond_22

    .line 932
    invoke-static {p1}, Lcom/nuance/swype/input/DatabaseConfig;->foundFileInExternalPath(Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".mp3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/DatabaseConfig;->foundFileInExternalPath(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 934
    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public fileExists(Ljava/lang/String;)Z
    .registers 3
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 939
    iget-object v0, p0, Lcom/nuance/swype/input/DatabaseConfig$DbFileDetector;->privateFileNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
