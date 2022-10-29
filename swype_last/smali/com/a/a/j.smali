.class public final Lcom/a/a/j;
.super Ljava/io/IOException;


# instance fields
.field public a:Lcom/a/a/n;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/j;->a:Lcom/a/a/n;

    return-void
.end method

.method static b()Lcom/a/a/j;
    .registers 2

    new-instance v0, Lcom/a/a/j;

    const-string/jumbo v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/a/a/j;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static c()Lcom/a/a/j;
    .registers 2

    new-instance v0, Lcom/a/a/j;

    const-string/jumbo v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lcom/a/a/j;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static d()Lcom/a/a/j;
    .registers 2

    new-instance v0, Lcom/a/a/j;

    const-string/jumbo v1, "CodedInputStream encountered a malformed varint."

    invoke-direct {v0, v1}, Lcom/a/a/j;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static e()Lcom/a/a/j;
    .registers 2

    new-instance v0, Lcom/a/a/j;

    const-string/jumbo v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lcom/a/a/j;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static f()Lcom/a/a/j;
    .registers 2

    new-instance v0, Lcom/a/a/j;

    const-string/jumbo v1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {v0, v1}, Lcom/a/a/j;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static g()Lcom/a/a/j;
    .registers 2

    new-instance v0, Lcom/a/a/j;

    const-string/jumbo v1, "Protocol message tag had invalid wire type."

    invoke-direct {v0, v1}, Lcom/a/a/j;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static h()Lcom/a/a/j;
    .registers 2

    new-instance v0, Lcom/a/a/j;

    const-string/jumbo v1, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {v0, v1}, Lcom/a/a/j;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static i()Lcom/a/a/j;
    .registers 2

    new-instance v0, Lcom/a/a/j;

    const-string/jumbo v1, "Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit."

    invoke-direct {v0, v1}, Lcom/a/a/j;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
