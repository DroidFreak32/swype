.class public final Lcom/nuance/swype/util/LogManager$Trace;
.super Lcom/nuance/swype/util/LogManager$AndroidLog;
.source "LogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/util/LogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Trace"
.end annotation


# instance fields
.field private final INDENT_CHAR:C

.field private final indentation:Ljava/lang/StringBuilder;

.field private final traceMethodStartTime:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 274
    const-string/jumbo v0, "[TRACE]"

    invoke-direct {p0, v0}, Lcom/nuance/swype/util/LogManager$AndroidLog;-><init>(Ljava/lang/String;)V

    .line 269
    const/16 v0, 0x23

    iput-char v0, p0, Lcom/nuance/swype/util/LogManager$Trace;->INDENT_CHAR:C

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/swype/util/LogManager$Trace;->indentation:Ljava/lang/StringBuilder;

    .line 271
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/util/LogManager$Trace;->traceMethodStartTime:Ljava/util/Map;

    .line 275
    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/nuance/swype/util/LogManager$Trace;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic d(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 267
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/util/LogManager$AndroidLog;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic d([Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 267
    invoke-super {p0, p1}, Lcom/nuance/swype/util/LogManager$AndroidLog;->d([Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic e(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 267
    invoke-super {p0, p1}, Lcom/nuance/swype/util/LogManager$AndroidLog;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 267
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/util/LogManager$AndroidLog;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic i(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 267
    invoke-super {p0, p1}, Lcom/nuance/swype/util/LogManager$AndroidLog;->i(Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic isLoggable(I)Z
    .registers 3

    .prologue
    .line 267
    invoke-super {p0, p1}, Lcom/nuance/swype/util/LogManager$AndroidLog;->isLoggable(I)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic v(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 267
    invoke-super {p0, p1}, Lcom/nuance/swype/util/LogManager$AndroidLog;->v(Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic w(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 267
    invoke-super {p0, p1}, Lcom/nuance/swype/util/LogManager$AndroidLog;->w(Ljava/lang/Object;)V

    return-void
.end method
