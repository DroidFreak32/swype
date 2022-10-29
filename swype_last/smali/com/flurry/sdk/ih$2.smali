.class final Lcom/flurry/sdk/ih$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kl$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ih;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kl$a",
        "<[B",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ii;

.field final synthetic b:Lcom/flurry/sdk/ij;

.field final synthetic c:Lcom/flurry/sdk/ih;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ih;Lcom/flurry/sdk/ii;Lcom/flurry/sdk/ij;)V
    .registers 4

    .prologue
    .line 118
    iput-object p1, p0, Lcom/flurry/sdk/ih$2;->c:Lcom/flurry/sdk/ih;

    iput-object p2, p0, Lcom/flurry/sdk/ih$2;->a:Lcom/flurry/sdk/ii;

    iput-object p3, p0, Lcom/flurry/sdk/ih$2;->b:Lcom/flurry/sdk/ij;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/kl;Ljava/lang/Object;)V
    .registers 13

    .prologue
    const-wide/16 v6, 0x0

    const/16 v9, 0x12c

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x3

    .line 118
    check-cast p2, Ljava/lang/String;

    .line 1121
    invoke-static {}, Lcom/flurry/sdk/ih;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Pulse report to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/flurry/sdk/ih$2;->a:Lcom/flurry/sdk/ii;

    .line 2116
    iget-object v4, v4, Lcom/flurry/sdk/ii;->k:Ljava/lang/String;

    .line 1121
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/ih$2;->a:Lcom/flurry/sdk/ii;

    .line 2124
    iget-object v4, v4, Lcom/flurry/sdk/ii;->m:Lcom/flurry/sdk/im;

    .line 3084
    iget-object v4, v4, Lcom/flurry/sdk/im;->c:Ljava/lang/String;

    .line 1122
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", HTTP status code is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3218
    iget v4, p1, Lcom/flurry/sdk/kn;->p:I

    .line 1123
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1121
    invoke-static {v8, v0, v3}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 4218
    iget v0, p1, Lcom/flurry/sdk/kn;->p:I

    .line 1127
    iget-object v3, p0, Lcom/flurry/sdk/ih$2;->b:Lcom/flurry/sdk/ij;

    .line 5149
    iget-wide v4, p1, Lcom/flurry/sdk/kn;->n:J

    .line 1127
    long-to-int v4, v4

    .line 6060
    if-gez v4, :cond_af

    .line 6062
    iget-wide v4, v3, Lcom/flurry/sdk/ij;->k:J

    cmp-long v4, v4, v6

    if-gtz v4, :cond_53

    .line 6063
    iput-wide v6, v3, Lcom/flurry/sdk/ij;->k:J

    .line 1128
    :cond_53
    :goto_53
    iget-object v3, p0, Lcom/flurry/sdk/ih$2;->b:Lcom/flurry/sdk/ij;

    iput v0, v3, Lcom/flurry/sdk/ij;->e:I

    .line 1131
    invoke-virtual {p1}, Lcom/flurry/sdk/kl;->c()Z

    move-result v3

    if-nez v3, :cond_106

    .line 6226
    iget-object v3, p1, Lcom/flurry/sdk/kn;->o:Ljava/lang/Exception;

    .line 7180
    iget-object v0, p1, Lcom/flurry/sdk/kn;->o:Ljava/lang/Exception;

    if-eqz v0, :cond_15a

    .line 7181
    iget-object v0, p1, Lcom/flurry/sdk/kn;->o:Ljava/lang/Exception;

    instance-of v0, v0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_15a

    move v0, v1

    .line 7186
    :goto_6a
    iget-boolean v4, p1, Lcom/flurry/sdk/kn;->t:Z

    if-nez v4, :cond_70

    if-eqz v0, :cond_71

    :cond_70
    move v2, v1

    .line 1134
    :cond_71
    if-eqz v2, :cond_d2

    .line 1136
    invoke-virtual {p1}, Lcom/flurry/sdk/kl;->e()Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 1137
    invoke-static {}, Lcom/flurry/sdk/ih;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Timeout occured when trying to connect to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/sdk/ih$2;->a:Lcom/flurry/sdk/ii;

    .line 8116
    iget-object v2, v2, Lcom/flurry/sdk/ii;->k:Ljava/lang/String;

    .line 1137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8226
    iget-object v2, p1, Lcom/flurry/sdk/kn;->o:Ljava/lang/Exception;

    .line 1138
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1137
    invoke-static {v8, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1146
    :goto_a5
    iget-object v0, p0, Lcom/flurry/sdk/ih$2;->c:Lcom/flurry/sdk/ih;

    iget-object v1, p0, Lcom/flurry/sdk/ih$2;->b:Lcom/flurry/sdk/ij;

    iget-object v2, p0, Lcom/flurry/sdk/ih$2;->a:Lcom/flurry/sdk/ii;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ih;->a(Lcom/flurry/sdk/ih;Lcom/flurry/sdk/ij;Lcom/flurry/sdk/ii;)V

    .line 1165
    :goto_ae
    return-void

    .line 6067
    :cond_af
    iget-wide v6, v3, Lcom/flurry/sdk/ij;->k:J

    int-to-long v4, v4

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/flurry/sdk/ij;->k:J

    goto :goto_53

    .line 1142
    :cond_b6
    invoke-static {}, Lcom/flurry/sdk/ih;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Manually managed http request timeout occured for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/sdk/ih$2;->a:Lcom/flurry/sdk/ii;

    .line 9116
    iget-object v2, v2, Lcom/flurry/sdk/ii;->k:Ljava/lang/String;

    .line 1143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1142
    invoke-static {v8, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_a5

    .line 1149
    :cond_d2
    invoke-static {}, Lcom/flurry/sdk/ih;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Error occured when trying to connect to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/sdk/ih$2;->a:Lcom/flurry/sdk/ii;

    .line 10116
    iget-object v2, v2, Lcom/flurry/sdk/ii;->k:Ljava/lang/String;

    .line 1149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1150
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1149
    invoke-static {v8, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1152
    iget-object v0, p0, Lcom/flurry/sdk/ih$2;->c:Lcom/flurry/sdk/ih;

    iget-object v1, p0, Lcom/flurry/sdk/ih$2;->b:Lcom/flurry/sdk/ij;

    iget-object v2, p0, Lcom/flurry/sdk/ih$2;->a:Lcom/flurry/sdk/ii;

    invoke-static {v0, v1, v2, p2}, Lcom/flurry/sdk/ih;->a(Lcom/flurry/sdk/ih;Lcom/flurry/sdk/ij;Lcom/flurry/sdk/ii;Ljava/lang/String;)V

    goto :goto_ae

    .line 1159
    :cond_106
    const/16 v1, 0xc8

    if-lt v0, v1, :cond_116

    if-ge v0, v9, :cond_116

    .line 1160
    iget-object v0, p0, Lcom/flurry/sdk/ih$2;->c:Lcom/flurry/sdk/ih;

    iget-object v1, p0, Lcom/flurry/sdk/ih$2;->b:Lcom/flurry/sdk/ij;

    iget-object v2, p0, Lcom/flurry/sdk/ih$2;->a:Lcom/flurry/sdk/ii;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ih;->b(Lcom/flurry/sdk/ih;Lcom/flurry/sdk/ij;Lcom/flurry/sdk/ii;)V

    goto :goto_ae

    .line 1164
    :cond_116
    if-lt v0, v9, :cond_126

    const/16 v1, 0x190

    if-ge v0, v1, :cond_126

    .line 1165
    iget-object v0, p0, Lcom/flurry/sdk/ih$2;->c:Lcom/flurry/sdk/ih;

    iget-object v1, p0, Lcom/flurry/sdk/ih$2;->b:Lcom/flurry/sdk/ij;

    iget-object v2, p0, Lcom/flurry/sdk/ih$2;->a:Lcom/flurry/sdk/ii;

    invoke-static {v0, v1, v2, p1}, Lcom/flurry/sdk/ih;->a(Lcom/flurry/sdk/ih;Lcom/flurry/sdk/ij;Lcom/flurry/sdk/ii;Lcom/flurry/sdk/kl;)V

    goto :goto_ae

    .line 1170
    :cond_126
    invoke-static {}, Lcom/flurry/sdk/ih;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/flurry/sdk/ih$2;->a:Lcom/flurry/sdk/ii;

    .line 10124
    iget-object v2, v2, Lcom/flurry/sdk/ii;->m:Lcom/flurry/sdk/im;

    .line 11084
    iget-object v2, v2, Lcom/flurry/sdk/im;->c:Ljava/lang/String;

    .line 1170
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " report failed sending to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/ih$2;->a:Lcom/flurry/sdk/ii;

    .line 11116
    iget-object v2, v2, Lcom/flurry/sdk/ii;->k:Ljava/lang/String;

    .line 1171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1170
    invoke-static {v8, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1173
    iget-object v0, p0, Lcom/flurry/sdk/ih$2;->c:Lcom/flurry/sdk/ih;

    iget-object v1, p0, Lcom/flurry/sdk/ih$2;->b:Lcom/flurry/sdk/ij;

    iget-object v2, p0, Lcom/flurry/sdk/ih$2;->a:Lcom/flurry/sdk/ii;

    invoke-static {v0, v1, v2, p2}, Lcom/flurry/sdk/ih;->a(Lcom/flurry/sdk/ih;Lcom/flurry/sdk/ij;Lcom/flurry/sdk/ii;Ljava/lang/String;)V

    goto/16 :goto_ae

    :cond_15a
    move v0, v2

    goto/16 :goto_6a
.end method
