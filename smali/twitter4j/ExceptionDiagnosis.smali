.class final Ltwitter4j/ExceptionDiagnosis;
.super Ljava/lang/Object;
.source "ExceptionDiagnosis.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x64cc93f854f97a4L


# instance fields
.field hexString:Ljava/lang/String;

.field lineNumberHash:I

.field stackLineHash:I

.field th:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 31
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Ltwitter4j/ExceptionDiagnosis;-><init>(Ljava/lang/Throwable;[Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method constructor <init>(Ljava/lang/Throwable;[Ljava/lang/String;)V
    .locals 11
    .param p1, "th"    # Ljava/lang/Throwable;
    .param p2, "inclusionFilter"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v8, ""

    iput-object v8, p0, Ltwitter4j/ExceptionDiagnosis;->hexString:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Ltwitter4j/ExceptionDiagnosis;->th:Ljava/lang/Throwable;

    .line 37
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    .line 38
    .local v7, "stackTrace":[Ljava/lang/StackTraceElement;
    iput v9, p0, Ltwitter4j/ExceptionDiagnosis;->stackLineHash:I

    .line 39
    iput v9, p0, Ltwitter4j/ExceptionDiagnosis;->lineNumberHash:I

    .line 40
    array-length v8, v7

    add-int/lit8 v3, v8, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 41
    aget-object v6, v7, v3

    .line 42
    .local v6, "line":Ljava/lang/StackTraceElement;
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, p2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    .line 43
    .local v1, "filter":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 44
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v9

    add-int v2, v8, v9

    .line 45
    .local v2, "hash":I
    iget v8, p0, Ltwitter4j/ExceptionDiagnosis;->stackLineHash:I

    mul-int/lit8 v8, v8, 0x1f

    add-int/2addr v8, v2

    iput v8, p0, Ltwitter4j/ExceptionDiagnosis;->stackLineHash:I

    .line 46
    iget v8, p0, Ltwitter4j/ExceptionDiagnosis;->lineNumberHash:I

    mul-int/lit8 v8, v8, 0x1f

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Ltwitter4j/ExceptionDiagnosis;->lineNumberHash:I

    .line 40
    .end local v1    # "filter":Ljava/lang/String;
    .end local v2    # "hash":I
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 42
    .restart local v1    # "filter":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 51
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "filter":Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "line":Ljava/lang/StackTraceElement;
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Ltwitter4j/ExceptionDiagnosis;->hexString:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Ltwitter4j/ExceptionDiagnosis;->stackLineHash:I

    invoke-direct {p0, v9}, Ltwitter4j/ExceptionDiagnosis;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Ltwitter4j/ExceptionDiagnosis;->lineNumberHash:I

    invoke-direct {p0, v9}, Ltwitter4j/ExceptionDiagnosis;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Ltwitter4j/ExceptionDiagnosis;->hexString:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 53
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Ltwitter4j/ExceptionDiagnosis;->hexString:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ltwitter4j/ExceptionDiagnosis;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    invoke-direct {v9, v10, p2}, Ltwitter4j/ExceptionDiagnosis;-><init>(Ljava/lang/Throwable;[Ljava/lang/String;)V

    invoke-virtual {v9}, Ltwitter4j/ExceptionDiagnosis;->asHexString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Ltwitter4j/ExceptionDiagnosis;->hexString:Ljava/lang/String;

    .line 56
    :cond_3
    return-void
.end method

.method private toHexString(I)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0000000"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method final asHexString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Ltwitter4j/ExceptionDiagnosis;->hexString:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 86
    if-ne p0, p1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v1

    .line 87
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 89
    check-cast v0, Ltwitter4j/ExceptionDiagnosis;

    .line 91
    .local v0, "that":Ltwitter4j/ExceptionDiagnosis;
    iget v3, p0, Ltwitter4j/ExceptionDiagnosis;->lineNumberHash:I

    iget v4, v0, Ltwitter4j/ExceptionDiagnosis;->lineNumberHash:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 92
    :cond_4
    iget v3, p0, Ltwitter4j/ExceptionDiagnosis;->stackLineHash:I

    iget v4, v0, Ltwitter4j/ExceptionDiagnosis;->stackLineHash:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method final getLineNumberHash()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Ltwitter4j/ExceptionDiagnosis;->lineNumberHash:I

    return v0
.end method

.method final getLineNumberHashAsHex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Ltwitter4j/ExceptionDiagnosis;->lineNumberHash:I

    invoke-direct {p0, v0}, Ltwitter4j/ExceptionDiagnosis;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getStackLineHash()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Ltwitter4j/ExceptionDiagnosis;->stackLineHash:I

    return v0
.end method

.method final getStackLineHashAsHex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Ltwitter4j/ExceptionDiagnosis;->stackLineHash:I

    invoke-direct {p0, v0}, Ltwitter4j/ExceptionDiagnosis;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 99
    iget v0, p0, Ltwitter4j/ExceptionDiagnosis;->stackLineHash:I

    .line 100
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/ExceptionDiagnosis;->lineNumberHash:I

    add-int/2addr v1, v2

    .line 101
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExceptionDiagnosis{stackLineHash="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ltwitter4j/ExceptionDiagnosis;->stackLineHash:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lineNumberHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/ExceptionDiagnosis;->lineNumberHash:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
