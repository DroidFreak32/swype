.class Lcom/fsck/k9/mail/store/WebDavStore$ConnectionInfo;
.super Ljava/lang/Object;
.source "WebDavStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/WebDavStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConnectionInfo"
.end annotation


# instance fields
.field public guessedAuthUrl:Ljava/lang/String;

.field public redirectUrl:Ljava/lang/String;

.field public requiredAuthType:S

.field public statusCode:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fsck/k9/mail/store/WebDavStore$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fsck/k9/mail/store/WebDavStore$1;

    .prologue
    .line 2617
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/WebDavStore$ConnectionInfo;-><init>()V

    return-void
.end method
