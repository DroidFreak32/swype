.class public Lcom/nuance/sns/facebook/FacebookError;
.super Ljava/lang/Throwable;
.source "FacebookError.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mErrorCode:I

.field private mErrorType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/sns/facebook/FacebookError;->mErrorCode:I

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "code"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/sns/facebook/FacebookError;->mErrorCode:I

    .line 38
    iput-object p2, p0, Lcom/nuance/sns/facebook/FacebookError;->mErrorType:Ljava/lang/String;

    .line 39
    iput p3, p0, Lcom/nuance/sns/facebook/FacebookError;->mErrorCode:I

    .line 40
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/nuance/sns/facebook/FacebookError;->mErrorCode:I

    return v0
.end method

.method public getErrorType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nuance/sns/facebook/FacebookError;->mErrorType:Ljava/lang/String;

    return-object v0
.end method
