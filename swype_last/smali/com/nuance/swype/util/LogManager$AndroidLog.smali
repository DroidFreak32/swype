.class Lcom/nuance/swype/util/LogManager$AndroidLog;
.super Ljava/lang/Object;
.source "LogManager.java"

# interfaces
.implements Lcom/nuance/swype/util/LogManager$Log;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/util/LogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidLog"
.end annotation


# instance fields
.field private final prefix:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 155
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Lcom/nuance/swype/util/LogManager$AndroidLog;-><init>(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    if-nez p1, :cond_b

    .line 160
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 162
    :cond_b
    iput-object p1, p0, Lcom/nuance/swype/util/LogManager$AndroidLog;->prefix:Ljava/lang/String;

    .line 163
    return-void
.end method

.method private log(ILjava/lang/Object;Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "level"    # I
    .param p2, "message"    # Ljava/lang/Object;
    .param p3, "t"    # Ljava/lang/Throwable;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LogTagMismatch"
        }
    .end annotation

    .prologue
    .line 226
    invoke-virtual {p0, p1}, Lcom/nuance/swype/util/LogManager$AndroidLog;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nuance/swype/util/LogManager$AndroidLog;->prefix:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 228
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p3, :cond_27

    .line 229
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/nuance/swype/util/LogManager$AndroidLog;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 230
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    :cond_27
    :goto_27
    const-string/jumbo v1, "Swype"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 237
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_31
    return-void

    .line 232
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_32
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_27
.end method


# virtual methods
.method public d(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 178
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Lcom/nuance/swype/util/LogManager$AndroidLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 179
    return-void
.end method

.method public varargs d([Ljava/lang/Object;)V
    .registers 6
    .param p1, "message"    # [Ljava/lang/Object;

    .prologue
    .line 173
    .line 1240
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nuance/swype/util/LogManager$AndroidLog;->prefix:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1241
    array-length v2, p1

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v2, :cond_13

    aget-object v3, p1, v0

    .line 1242
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1241
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 174
    :cond_13
    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 193
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/nuance/swype/util/LogManager$AndroidLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 194
    return-void
.end method

.method public e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 198
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2}, Lcom/nuance/swype/util/LogManager$AndroidLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 199
    return-void
.end method

.method public i(Ljava/lang/Object;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 183
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/nuance/swype/util/LogManager$AndroidLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 184
    return-void
.end method

.method public isLoggable(I)Z
    .registers 3
    .param p1, "level"    # I

    .prologue
    .line 168
    # getter for: Lcom/nuance/swype/util/LogManager;->loggableLevel:I
    invoke-static {}, Lcom/nuance/swype/util/LogManager;->access$000()I

    move-result v0

    if-lt p1, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public v(Ljava/lang/Object;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 203
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/nuance/swype/util/LogManager$AndroidLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 204
    return-void
.end method

.method public w(Ljava/lang/Object;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 213
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/nuance/swype/util/LogManager$AndroidLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 214
    return-void
.end method
