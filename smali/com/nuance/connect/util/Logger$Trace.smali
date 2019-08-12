.class public Lcom/nuance/connect/util/Logger$Trace;
.super Lcom/nuance/connect/util/Logger$DeveloperLog;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/util/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Trace"
.end annotation


# instance fields
.field private INDENT_CHAR:C

.field private indentation:Ljava/lang/StringBuilder;

.field private traceMethodStartTime:Ljava/util/Map;
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
    .locals 3

    const/16 v2, 0x23

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-string v1, "[TRACE]"

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/util/Logger$DeveloperLog;-><init>(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)V

    iput-char v2, p0, Lcom/nuance/connect/util/Logger$Trace;->INDENT_CHAR:C

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/connect/util/Logger$Trace;->indentation:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/util/Logger$Trace;->traceMethodStartTime:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/connect/util/Logger$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/util/Logger$Trace;-><init>()V

    return-void
.end method

.method private curIndent()Ljava/lang/StringBuilder;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/util/Logger$Trace;->indentation:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method private decIndent()Ljava/lang/StringBuilder;
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/util/Logger$Trace;->indentation:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nuance/connect/util/Logger$Trace;->indentation:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nuance/connect/util/Logger$Trace;->indentation:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method private incIndent()Ljava/lang/StringBuilder;
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/util/Logger$Trace;->indentation:Ljava/lang/StringBuilder;

    iget-char v1, p0, Lcom/nuance/connect/util/Logger$Trace;->INDENT_CHAR:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nuance/connect/util/Logger$Trace;->indentation:Ljava/lang/StringBuilder;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nuance/connect/util/Logger$DeveloperLog;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/nuance/connect/util/Logger$DeveloperLog;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/nuance/connect/util/Logger$DeveloperLog;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/nuance/connect/util/Logger$DeveloperLog;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/nuance/connect/util/Logger$DeveloperLog;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-super/range {p0 .. p6}, Lcom/nuance/connect/util/Logger$DeveloperLog;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-super/range {p0 .. p7}, Lcom/nuance/connect/util/Logger$DeveloperLog;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-super/range {p0 .. p8}, Lcom/nuance/connect/util/Logger$DeveloperLog;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-super/range {p0 .. p9}, Lcom/nuance/connect/util/Logger$DeveloperLog;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-super/range {p0 .. p10}, Lcom/nuance/connect/util/Logger$DeveloperLog;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-super/range {p0 .. p11}, Lcom/nuance/connect/util/Logger$DeveloperLog;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-super/range {p0 .. p12}, Lcom/nuance/connect/util/Logger$DeveloperLog;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-super/range {p0 .. p13}, Lcom/nuance/connect/util/Logger$DeveloperLog;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/nuance/connect/util/Logger$DeveloperLog;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic e(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nuance/connect/util/Logger$DeveloperLog;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic e(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/nuance/connect/util/Logger$DeveloperLog;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/nuance/connect/util/Logger$DeveloperLog;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/nuance/connect/util/Logger$DeveloperLog;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/nuance/connect/util/Logger$DeveloperLog;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-super/range {p0 .. p6}, Lcom/nuance/connect/util/Logger$DeveloperLog;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-super/range {p0 .. p7}, Lcom/nuance/connect/util/Logger$DeveloperLog;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-super/range {p0 .. p8}, Lcom/nuance/connect/util/Logger$DeveloperLog;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/nuance/connect/util/Logger$DeveloperLog;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public enter(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Lcom/nuance/connect/util/Logger$Trace;->incIndent()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/nuance/connect/util/Logger$Trace;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public enter(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Lcom/nuance/connect/util/Logger$Trace;->incIndent()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/nuance/connect/util/Logger$Trace;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public enter(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Lcom/nuance/connect/util/Logger$Trace;->incIndent()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/nuance/connect/util/Logger$Trace;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public enter(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    invoke-direct {p0}, Lcom/nuance/connect/util/Logger$Trace;->incIndent()Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Trace;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public enter(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    invoke-direct {p0}, Lcom/nuance/connect/util/Logger$Trace;->incIndent()Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/connect/util/Logger$Trace;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public enter(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    invoke-direct {p0}, Lcom/nuance/connect/util/Logger$Trace;->incIndent()Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/nuance/connect/util/Logger$Trace;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public enter(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    invoke-direct {p0}, Lcom/nuance/connect/util/Logger$Trace;->incIndent()Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/nuance/connect/util/Logger$Trace;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public enterMethod(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public exit(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Lcom/nuance/connect/util/Logger$Trace;->curIndent()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/nuance/connect/util/Logger$Trace;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/nuance/connect/util/Logger$Trace;->decIndent()Ljava/lang/StringBuilder;

    return-void
.end method

.method public exit(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Lcom/nuance/connect/util/Logger$Trace;->curIndent()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/nuance/connect/util/Logger$Trace;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/nuance/connect/util/Logger$Trace;->decIndent()Ljava/lang/StringBuilder;

    return-void
.end method

.method public exit(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Lcom/nuance/connect/util/Logger$Trace;->curIndent()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/nuance/connect/util/Logger$Trace;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/nuance/connect/util/Logger$Trace;->decIndent()Ljava/lang/StringBuilder;

    return-void
.end method

.method public exit(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    invoke-direct {p0}, Lcom/nuance/connect/util/Logger$Trace;->curIndent()Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Trace;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/nuance/connect/util/Logger$Trace;->decIndent()Ljava/lang/StringBuilder;

    return-void
.end method

.method public exit(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    invoke-direct {p0}, Lcom/nuance/connect/util/Logger$Trace;->curIndent()Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/connect/util/Logger$Trace;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/nuance/connect/util/Logger$Trace;->decIndent()Ljava/lang/StringBuilder;

    return-void
.end method

.method public exit(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    invoke-direct {p0}, Lcom/nuance/connect/util/Logger$Trace;->curIndent()Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/nuance/connect/util/Logger$Trace;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/nuance/connect/util/Logger$Trace;->decIndent()Ljava/lang/StringBuilder;

    return-void
.end method

.method public exit(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    invoke-direct {p0}, Lcom/nuance/connect/util/Logger$Trace;->curIndent()Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/nuance/connect/util/Logger$Trace;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/nuance/connect/util/Logger$Trace;->decIndent()Ljava/lang/StringBuilder;

    return-void
.end method

.method public exitMethod(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic i(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nuance/connect/util/Logger$DeveloperLog;->i(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic i(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/nuance/connect/util/Logger$DeveloperLog;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/nuance/connect/util/Logger$DeveloperLog;->i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/nuance/connect/util/Logger$DeveloperLog;->i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/nuance/connect/util/Logger$DeveloperLog;->i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-super/range {p0 .. p6}, Lcom/nuance/connect/util/Logger$DeveloperLog;->i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-super/range {p0 .. p7}, Lcom/nuance/connect/util/Logger$DeveloperLog;->i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-super/range {p0 .. p8}, Lcom/nuance/connect/util/Logger$DeveloperLog;->i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic i(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/nuance/connect/util/Logger$DeveloperLog;->i(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic isLoggable(I)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/nuance/connect/util/Logger$DeveloperLog;->isLoggable(I)Z

    move-result v0

    return v0
.end method

.method public nanoTime()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public nanoTimeToMillis(J)J
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic setCustomLogLevel(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nuance/connect/util/Logger$DeveloperLog;->setCustomLogLevel(I)V

    return-void
.end method

.method public bridge synthetic v(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nuance/connect/util/Logger$DeveloperLog;->v(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic v(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/nuance/connect/util/Logger$DeveloperLog;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/nuance/connect/util/Logger$DeveloperLog;->v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/nuance/connect/util/Logger$DeveloperLog;->v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/nuance/connect/util/Logger$DeveloperLog;->v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-super/range {p0 .. p6}, Lcom/nuance/connect/util/Logger$DeveloperLog;->v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-super/range {p0 .. p7}, Lcom/nuance/connect/util/Logger$DeveloperLog;->v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-super/range {p0 .. p8}, Lcom/nuance/connect/util/Logger$DeveloperLog;->v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic v(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/nuance/connect/util/Logger$DeveloperLog;->v(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic w(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nuance/connect/util/Logger$DeveloperLog;->w(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic w(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/nuance/connect/util/Logger$DeveloperLog;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic w(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/nuance/connect/util/Logger$DeveloperLog;->w(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic w(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/nuance/connect/util/Logger$DeveloperLog;->w(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic w(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/nuance/connect/util/Logger$DeveloperLog;->w(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic w(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-super/range {p0 .. p6}, Lcom/nuance/connect/util/Logger$DeveloperLog;->w(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic w(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-super/range {p0 .. p7}, Lcom/nuance/connect/util/Logger$DeveloperLog;->w(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic w(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-super/range {p0 .. p8}, Lcom/nuance/connect/util/Logger$DeveloperLog;->w(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic w(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/nuance/connect/util/Logger$DeveloperLog;->w(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method
