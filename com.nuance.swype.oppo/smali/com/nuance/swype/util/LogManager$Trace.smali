.class public final Lcom/nuance/swype/util/LogManager$Trace;
.super Lcom/nuance/swype/util/LogManager$Log;
.source "LogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/util/LogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Trace"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 346
    const-string v0, "[TRACE]"

    invoke-direct {p0, v0}, Lcom/nuance/swype/util/LogManager$Log;-><init>(Ljava/lang/String;)V

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x23

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 343
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 347
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/nuance/swype/util/LogManager$Trace;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic d(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 340
    invoke-super {p0, p1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 340
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 340
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Ljava/lang/Object;

    .prologue
    .line 340
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Ljava/lang/Object;
    .param p5, "x4"    # Ljava/lang/Object;

    .prologue
    .line 340
    invoke-super/range {p0 .. p5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Ljava/lang/Object;
    .param p5, "x4"    # Ljava/lang/Object;
    .param p6, "x5"    # Ljava/lang/Object;

    .prologue
    .line 340
    invoke-super/range {p0 .. p6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Ljava/lang/Object;
    .param p5, "x4"    # Ljava/lang/Object;
    .param p6, "x5"    # Ljava/lang/Object;
    .param p7, "x6"    # Ljava/lang/Object;

    .prologue
    .line 340
    invoke-super/range {p0 .. p7}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Ljava/lang/Object;
    .param p5, "x4"    # Ljava/lang/Object;
    .param p6, "x5"    # Ljava/lang/Object;
    .param p7, "x6"    # Ljava/lang/Object;
    .param p8, "x7"    # Ljava/lang/Object;

    .prologue
    .line 340
    invoke-super/range {p0 .. p8}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Ljava/lang/Object;
    .param p5, "x4"    # Ljava/lang/Object;
    .param p6, "x5"    # Ljava/lang/Object;
    .param p7, "x6"    # Ljava/lang/Object;
    .param p8, "x7"    # Ljava/lang/Object;
    .param p9, "x8"    # Ljava/lang/Object;

    .prologue
    .line 340
    invoke-super/range {p0 .. p9}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Ljava/lang/Object;
    .param p5, "x4"    # Ljava/lang/Object;
    .param p6, "x5"    # Ljava/lang/Object;
    .param p7, "x6"    # Ljava/lang/Object;
    .param p8, "x7"    # Ljava/lang/Object;
    .param p9, "x8"    # Ljava/lang/Object;
    .param p10, "x9"    # Ljava/lang/Object;
    .param p11, "x10"    # Ljava/lang/Object;
    .param p12, "x11"    # Ljava/lang/Object;

    .prologue
    .line 340
    invoke-super/range {p0 .. p12}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Ljava/lang/Object;
    .param p5, "x4"    # Ljava/lang/Object;
    .param p6, "x5"    # Ljava/lang/Object;
    .param p7, "x6"    # Ljava/lang/Object;
    .param p8, "x7"    # Ljava/lang/Object;
    .param p9, "x8"    # Ljava/lang/Object;
    .param p10, "x9"    # Ljava/lang/Object;
    .param p11, "x10"    # Ljava/lang/Object;
    .param p12, "x11"    # Ljava/lang/Object;
    .param p13, "x12"    # Ljava/lang/Object;

    .prologue
    .line 340
    invoke-super/range {p0 .. p13}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Ljava/lang/Object;
    .param p5, "x4"    # Ljava/lang/Object;
    .param p6, "x5"    # Ljava/lang/Object;
    .param p7, "x6"    # Ljava/lang/Object;
    .param p8, "x7"    # Ljava/lang/Object;
    .param p9, "x8"    # Ljava/lang/Object;
    .param p10, "x9"    # Ljava/lang/Object;
    .param p11, "x10"    # Ljava/lang/Object;
    .param p12, "x11"    # Ljava/lang/Object;
    .param p13, "x12"    # Ljava/lang/Object;
    .param p14, "x13"    # Ljava/lang/Object;
    .param p15, "x14"    # Ljava/lang/Object;

    .prologue
    .line 340
    invoke-super/range {p0 .. p15}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic e(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 340
    invoke-super {p0, p1}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 340
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic i(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 340
    invoke-super {p0, p1}, Lcom/nuance/swype/util/LogManager$Log;->i(Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic isLoggable(I)Z
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 340
    invoke-super {p0, p1}, Lcom/nuance/swype/util/LogManager$Log;->isLoggable(I)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic v(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 340
    invoke-super {p0, p1}, Lcom/nuance/swype/util/LogManager$Log;->v(Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic w(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 340
    invoke-super {p0, p1}, Lcom/nuance/swype/util/LogManager$Log;->w(Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic w(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 340
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/util/LogManager$Log;->w(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method
