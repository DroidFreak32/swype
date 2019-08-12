.class public Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBody;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Lcom/fsck/k9/mail/Body;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/LocalStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalAttachmentBody"
.end annotation


# static fields
.field private static final EMPTY_BYTE_ARRAY:[B


# instance fields
.field private mApplication:Landroid/app/Application;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5888
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBody;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/app/Application;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "application"    # Landroid/app/Application;

    .prologue
    .line 5893
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5894
    iput-object p2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBody;->mApplication:Landroid/app/Application;

    .line 5895
    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBody;->mUri:Landroid/net/Uri;

    .line 5896
    return-void
.end method


# virtual methods
.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 5924
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBody;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 5902
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBody;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBody;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 5910
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBody;->EMPTY_BYTE_ARRAY:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 5916
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBody;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 5917
    .local v1, "in":Ljava/io/InputStream;
    new-instance v0, Lcom/fsck/k9/mail/filter/Base64OutputStream;

    invoke-direct {v0, p1}, Lcom/fsck/k9/mail/filter/Base64OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 5918
    .local v0, "base64Out":Lcom/fsck/k9/mail/filter/Base64OutputStream;
    invoke-static {v1, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 5919
    invoke-virtual {v0}, Lcom/fsck/k9/mail/filter/Base64OutputStream;->close()V

    .line 5920
    return-void
.end method
