.class public final Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;
.super Ljava/lang/Object;
.source "InputContextRequestDispatcher.java"

# interfaces
.implements Lcom/nuance/input/swypecorelib/InputContextRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$DefaultInputContextRequestHandler;,
        Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$InputContextRequestHandler;
    }
.end annotation


# static fields
.field private static final INPUTCONTEXTREQUESTDISPATCHER:Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;

.field private static log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private defaultRequestHandler:Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$DefaultInputContextRequestHandler;

.field private requestHandler:Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$InputContextRequestHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    const-class v0, Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 15
    new-instance v0, Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;-><init>(Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$InputContextRequestHandler;)V

    sput-object v0, Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;->INPUTCONTEXTREQUESTDISPATCHER:Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;

    return-void
.end method

.method private constructor <init>(Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$InputContextRequestHandler;)V
    .locals 2
    .param p1, "requestHandler"    # Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$InputContextRequestHandler;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$DefaultInputContextRequestHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$DefaultInputContextRequestHandler;-><init>(Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$1;)V

    iput-object v0, p0, Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;->defaultRequestHandler:Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$DefaultInputContextRequestHandler;

    .line 31
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;->setHandler(Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$InputContextRequestHandler;)Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;

    .line 32
    return-void
.end method

.method static synthetic access$100()Lcom/nuance/swype/util/LogManager$Log;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method public static getDispatcherInstance()Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;->INPUTCONTEXTREQUESTDISPATCHER:Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;

    return-object v0
.end method


# virtual methods
.method public final autoAccept(Z)Z
    .locals 4
    .param p1, "addSeparator"    # Z

    .prologue
    .line 64
    sget-object v0, Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "autoAccept("

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ")"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;->requestHandler:Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$InputContextRequestHandler;

    invoke-interface {v0, p1}, Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$InputContextRequestHandler;->autoAccept(Z)Z

    move-result v0

    return v0
.end method

.method public final getAutoCapitalizationTextBuffer(I)[C
    .locals 5
    .param p1, "maxBufferLen"    # I

    .prologue
    .line 55
    iget-object v1, p0, Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;->requestHandler:Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$InputContextRequestHandler;

    invoke-interface {v1, p1}, Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$InputContextRequestHandler;->getAutoCapitalizationTextBuffer(I)[C

    move-result-object v0

    .line 57
    .local v0, "contextBuffer":[C
    sget-object v2, Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v4, "getAutoCapitalizationTextBuffer("

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    const-string/jumbo v4, "): contextBuffer = "

    aput-object v4, v3, v1

    const/4 v4, 0x3

    if-nez v0, :cond_0

    const-string/jumbo v1, "EMPTY"

    :goto_0
    aput-object v1, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 59
    return-object v0

    .line 57
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public final getContextBuffer(I)[C
    .locals 5
    .param p1, "maxBufferLen"    # I

    .prologue
    .line 46
    iget-object v1, p0, Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;->requestHandler:Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$InputContextRequestHandler;

    invoke-interface {v1, p1}, Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$InputContextRequestHandler;->getContextBuffer(I)[C

    move-result-object v0

    .line 48
    .local v0, "contextBuffer":[C
    sget-object v2, Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v4, "getContextBuffer("

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    const-string/jumbo v4, "): contextBuffer = "

    aput-object v4, v3, v1

    const/4 v4, 0x3

    if-nez v0, :cond_0

    const-string/jumbo v1, "EMPTY"

    :goto_0
    aput-object v1, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 50
    return-object v0

    .line 48
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public final setHandler(Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$InputContextRequestHandler;)Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;
    .locals 1
    .param p1, "requestHandler"    # Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$InputContextRequestHandler;

    .prologue
    .line 35
    if-eqz p1, :cond_0

    .line 36
    iput-object p1, p0, Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;->requestHandler:Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$InputContextRequestHandler;

    .line 41
    :goto_0
    return-object p0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;->defaultRequestHandler:Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$DefaultInputContextRequestHandler;

    iput-object v0, p0, Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;->requestHandler:Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$InputContextRequestHandler;

    goto :goto_0
.end method
