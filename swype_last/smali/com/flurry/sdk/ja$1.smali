.class final Lcom/flurry/sdk/ja$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ka;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ja;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/ka",
        "<",
        "Lcom/flurry/sdk/le;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ja;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ja;)V
    .registers 2

    .prologue
    .line 119
    iput-object p1, p0, Lcom/flurry/sdk/ja$1;->a:Lcom/flurry/sdk/ja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/jz;)V
    .registers 11

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x1

    const/4 v6, 0x4

    .line 119
    check-cast p1, Lcom/flurry/sdk/le;

    .line 1122
    iget-object v0, p0, Lcom/flurry/sdk/ja$1;->a:Lcom/flurry/sdk/ja;

    invoke-static {v0}, Lcom/flurry/sdk/ja;->a(Lcom/flurry/sdk/ja;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p1, Lcom/flurry/sdk/le;->b:Lcom/flurry/sdk/ld;

    iget-object v1, p0, Lcom/flurry/sdk/ja$1;->a:Lcom/flurry/sdk/ja;

    invoke-static {v1}, Lcom/flurry/sdk/ja;->a(Lcom/flurry/sdk/ja;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_27

    .line 1126
    :cond_1c
    sget-object v0, Lcom/flurry/sdk/ja$8;->a:[I

    iget v1, p1, Lcom/flurry/sdk/le;->c:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1f2

    .line 1269
    :cond_27
    :goto_27
    return-void

    .line 1128
    :pswitch_28
    iget-object v2, p0, Lcom/flurry/sdk/ja$1;->a:Lcom/flurry/sdk/ja;

    iget-object v1, p1, Lcom/flurry/sdk/le;->b:Lcom/flurry/sdk/ld;

    iget-object v0, p1, Lcom/flurry/sdk/le;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1205
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lcom/flurry/sdk/ja;->g:Ljava/lang/ref/WeakReference;

    .line 1207
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    move-result-object v3

    .line 1209
    const-string/jumbo v1, "LogEvents"

    invoke-virtual {v3, v1}, Lcom/flurry/sdk/lj;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v2, Lcom/flurry/sdk/ja;->k:Z

    .line 1210
    const-string/jumbo v1, "LogEvents"

    invoke-virtual {v3, v1, v2}, Lcom/flurry/sdk/lj;->a(Ljava/lang/String;Lcom/flurry/sdk/lj$a;)V

    .line 1211
    sget-object v1, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "initSettings, LogEvents = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, v2, Lcom/flurry/sdk/ja;->k:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v1, v4}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1213
    const-string/jumbo v1, "UserId"

    invoke-virtual {v3, v1}, Lcom/flurry/sdk/lj;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/flurry/sdk/ja;->l:Ljava/lang/String;

    .line 1214
    const-string/jumbo v1, "UserId"

    invoke-virtual {v3, v1, v2}, Lcom/flurry/sdk/lj;->a(Ljava/lang/String;Lcom/flurry/sdk/lj$a;)V

    .line 1215
    sget-object v1, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "initSettings, UserId = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/flurry/sdk/ja;->l:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v1, v4}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1217
    const-string/jumbo v1, "Gender"

    invoke-virtual {v3, v1}, Lcom/flurry/sdk/lj;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    iput-byte v1, v2, Lcom/flurry/sdk/ja;->m:B

    .line 1218
    const-string/jumbo v1, "Gender"

    invoke-virtual {v3, v1, v2}, Lcom/flurry/sdk/lj;->a(Ljava/lang/String;Lcom/flurry/sdk/lj$a;)V

    .line 1219
    sget-object v1, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "initSettings, Gender = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v5, v2, Lcom/flurry/sdk/ja;->m:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v1, v4}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1221
    const-string/jumbo v1, "Age"

    invoke-virtual {v3, v1}, Lcom/flurry/sdk/lj;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iput-object v1, v2, Lcom/flurry/sdk/ja;->n:Ljava/lang/Long;

    .line 1222
    const-string/jumbo v1, "Age"

    invoke-virtual {v3, v1, v2}, Lcom/flurry/sdk/lj;->a(Ljava/lang/String;Lcom/flurry/sdk/lj$a;)V

    .line 1223
    sget-object v1, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "initSettings, BirthDate = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/flurry/sdk/ja;->n:Ljava/lang/Long;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v1, v4}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1225
    const-string/jumbo v1, "analyticsEnabled"

    invoke-virtual {v3, v1}, Lcom/flurry/sdk/lj;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v2, Lcom/flurry/sdk/ja;->o:Z

    .line 1226
    const-string/jumbo v1, "analyticsEnabled"

    invoke-virtual {v3, v1, v2}, Lcom/flurry/sdk/lj;->a(Ljava/lang/String;Lcom/flurry/sdk/lj$a;)V

    .line 1227
    sget-object v1, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "initSettings, AnalyticsEnabled = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v2, Lcom/flurry/sdk/ja;->o:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v1, v3}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1970
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, ".flurryagent."

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v3

    .line 2101
    iget-object v3, v3, Lcom/flurry/sdk/jr;->d:Ljava/lang/String;

    .line 1970
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1229
    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, v2, Lcom/flurry/sdk/ja;->h:Ljava/io/File;

    .line 1231
    new-instance v1, Lcom/flurry/sdk/jy;

    .line 2974
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, ".yflurryreport."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v4

    .line 3101
    iget-object v4, v4, Lcom/flurry/sdk/jr;->d:Ljava/lang/String;

    .line 2974
    invoke-static {v4}, Lcom/flurry/sdk/lr;->i(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5, v8}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1231
    invoke-virtual {v0, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, ".yflurryreport."

    new-instance v5, Lcom/flurry/sdk/ja$10;

    invoke-direct {v5, v2}, Lcom/flurry/sdk/ja$10;-><init>(Lcom/flurry/sdk/ja;)V

    invoke-direct {v1, v3, v4, v7, v5}, Lcom/flurry/sdk/jy;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/lc;)V

    iput-object v1, v2, Lcom/flurry/sdk/ja;->i:Lcom/flurry/sdk/jy;

    .line 1238
    invoke-virtual {v2, v0}, Lcom/flurry/sdk/ja;->a(Landroid/content/Context;)V

    .line 1239
    invoke-virtual {v2, v7}, Lcom/flurry/sdk/ja;->a(Z)V

    .line 1243
    invoke-static {}, Lcom/flurry/sdk/hk;->a()Lcom/flurry/sdk/hk;

    move-result-object v0

    .line 4087
    iget-object v0, v0, Lcom/flurry/sdk/hk;->a:Lcom/flurry/sdk/if;

    .line 1243
    if-eqz v0, :cond_182

    .line 1244
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ja$11;

    invoke-direct {v1, v2}, Lcom/flurry/sdk/ja$11;-><init>(Lcom/flurry/sdk/ja;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    .line 1253
    :cond_182
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ja$12;

    invoke-direct {v1, v2}, Lcom/flurry/sdk/ja$12;-><init>(Lcom/flurry/sdk/ja;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    .line 1259
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ja$13;

    invoke-direct {v1, v2}, Lcom/flurry/sdk/ja$13;-><init>(Lcom/flurry/sdk/ja;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    .line 1268
    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/je;->c()Z

    move-result v0

    if-eqz v0, :cond_1b2

    .line 1269
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ja$14;

    invoke-direct {v1, v2}, Lcom/flurry/sdk/ja$14;-><init>(Lcom/flurry/sdk/ja;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    goto/16 :goto_27

    .line 1276
    :cond_1b2
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object v0

    const-string/jumbo v1, "com.flurry.android.sdk.IdProviderFinishedEvent"

    iget-object v2, v2, Lcom/flurry/sdk/ja;->p:Lcom/flurry/sdk/ka;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kb;->a(Ljava/lang/String;Lcom/flurry/sdk/ka;)V

    goto/16 :goto_27

    .line 1132
    :pswitch_1c0
    iget-object v0, p0, Lcom/flurry/sdk/ja$1;->a:Lcom/flurry/sdk/ja;

    iget-object v1, p1, Lcom/flurry/sdk/le;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/flurry/sdk/ja;->a()V

    goto/16 :goto_27

    .line 1136
    :pswitch_1cc
    iget-object v0, p0, Lcom/flurry/sdk/ja$1;->a:Lcom/flurry/sdk/ja;

    iget-object v1, p1, Lcom/flurry/sdk/le;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/flurry/sdk/ja;->b()V

    goto/16 :goto_27

    .line 1140
    :pswitch_1d8
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object v0

    const-string/jumbo v1, "com.flurry.android.sdk.FlurrySessionEvent"

    iget-object v2, p0, Lcom/flurry/sdk/ja$1;->a:Lcom/flurry/sdk/ja;

    invoke-static {v2}, Lcom/flurry/sdk/ja;->b(Lcom/flurry/sdk/ja;)Lcom/flurry/sdk/ka;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kb;->b(Ljava/lang/String;Lcom/flurry/sdk/ka;)V

    .line 1142
    iget-object v0, p0, Lcom/flurry/sdk/ja$1;->a:Lcom/flurry/sdk/ja;

    iget-wide v2, p1, Lcom/flurry/sdk/le;->d:J

    invoke-virtual {v0, v2, v3}, Lcom/flurry/sdk/ja;->a(J)V

    goto/16 :goto_27

    .line 1126
    nop

    :pswitch_data_1f2
    .packed-switch 0x1
        :pswitch_28
        :pswitch_1c0
        :pswitch_1cc
        :pswitch_1d8
    .end packed-switch
.end method
