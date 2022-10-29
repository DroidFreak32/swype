.class Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$DefaultInputContextRequestHandler;
.super Ljava/lang/Object;
.source "InputContextRequestDispatcher.java"

# interfaces
.implements Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$InputContextRequestHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultInputContextRequestHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$1;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$DefaultInputContextRequestHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public autoAccept(Z)Z
    .registers 7
    .param p1, "addSeparator"    # Z

    .prologue
    const/4 v4, 0x0

    .line 84
    # getter for: Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "DefaultInputContextRequestHandler.autoAccept("

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ")"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 86
    return v4
.end method

.method public getAutoCapitalizationTextBuffer(I)[C
    .registers 6
    .param p1, "maxBufferLen"    # I

    .prologue
    .line 78
    # getter for: Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "DefaultInputContextRequestHandler.getAutoCapitalizationTextBuffer()"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContextBuffer(I)[C
    .registers 6
    .param p1, "maxBufferLen"    # I

    .prologue
    .line 72
    # getter for: Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "DefaultInputContextRequestHandler.getContextBuffer()"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 74
    const/4 v0, 0x0

    return-object v0
.end method
