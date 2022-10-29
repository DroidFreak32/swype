.class public final Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
.super Lcom/a/a/h;

# interfaces
.implements Lcom/nuance/connect/proto/Prediction$PredictionResultV1OrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/proto/Prediction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PredictionResultV1"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;
    }
.end annotation


# static fields
.field public static final ATTRIBUTE_FIELD_NUMBER:I = 0x4

.field public static final FULLSPELL_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/a/a/p; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/p",
            "<",
            "Lcom/nuance/connect/proto/Prediction$PredictionResultV1;",
            ">;"
        }
    .end annotation
.end field

.field public static final PHRASE_FIELD_NUMBER:I = 0x1

.field public static final SPELL_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

.field private static final serialVersionUID:J


# instance fields
.field private attribute_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private fullSpell_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private phrase_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private spell_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1$1;

    invoke-direct {v0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1$1;-><init>()V

    sput-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->PARSER:Lcom/a/a/p;

    new-instance v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;-><init>(Z)V

    sput-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->defaultInstance:Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    invoke-direct {v0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/a/a/d;Lcom/a/a/f;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v3, 0x1

    .line 0
    invoke-direct {p0}, Lcom/a/a/h;-><init>()V

    iput-byte v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->memoizedIsInitialized:B

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->initFields()V

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    :cond_14
    :goto_14
    if-nez v2, :cond_1bf

    :try_start_16
    invoke-virtual {p1}, Lcom/a/a/d;->a()I

    move-result v1

    sparse-switch v1, :sswitch_data_20e

    invoke-virtual {p0, p1, p2, v1}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->parseUnknownField(Lcom/a/a/d;Lcom/a/a/f;I)Z

    move-result v1

    if-nez v1, :cond_14

    move v2, v3

    goto :goto_14

    :sswitch_25
    move v2, v3

    goto :goto_14

    :sswitch_27
    and-int/lit8 v1, v0, 0x1

    if-eq v1, v3, :cond_20b

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;
    :try_end_32
    .catch Lcom/a/a/j; {:try_start_16 .. :try_end_32} :catch_1ae
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_32} :catch_1b9
    .catchall {:try_start_16 .. :try_end_32} :catchall_1f3

    or-int/lit8 v1, v0, 0x1

    :goto_34
    :try_start_34
    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/a/a/d;->m()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_41
    .catch Lcom/a/a/j; {:try_start_34 .. :try_end_41} :catch_72
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_41} :catch_fd
    .catchall {:try_start_34 .. :try_end_41} :catchall_76

    move v0, v1

    goto :goto_14

    :sswitch_43
    :try_start_43
    invoke-virtual {p1}, Lcom/a/a/d;->s()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/a/a/d;->d(I)I

    move-result v4

    and-int/lit8 v1, v0, 0x1

    if-eq v1, v3, :cond_208

    invoke-virtual {p1}, Lcom/a/a/d;->w()I

    move-result v1

    if-lez v1, :cond_208

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;
    :try_end_5c
    .catch Lcom/a/a/j; {:try_start_43 .. :try_end_5c} :catch_1ae
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_5c} :catch_1b9
    .catchall {:try_start_43 .. :try_end_5c} :catchall_1f3

    or-int/lit8 v1, v0, 0x1

    :goto_5e
    :try_start_5e
    invoke-virtual {p1}, Lcom/a/a/d;->w()I

    move-result v0

    if-lez v0, :cond_ab

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/a/a/d;->m()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_71
    .catch Lcom/a/a/j; {:try_start_5e .. :try_end_71} :catch_72
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_71} :catch_fd
    .catchall {:try_start_5e .. :try_end_71} :catchall_76

    goto :goto_5e

    :catch_72
    move-exception v0

    .line 1000
    :goto_73
    :try_start_73
    iput-object p0, v0, Lcom/a/a/j;->a:Lcom/a/a/n;

    .line 0
    throw v0
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_76

    :catchall_76
    move-exception v0

    :goto_77
    and-int/lit8 v2, v1, 0x1

    if-ne v2, v3, :cond_83

    iget-object v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    :cond_83
    and-int/lit8 v2, v1, 0x2

    if-ne v2, v6, :cond_8f

    iget-object v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    :cond_8f
    and-int/lit8 v2, v1, 0x4

    if-ne v2, v7, :cond_9b

    iget-object v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    :cond_9b
    and-int/lit8 v1, v1, 0x8

    if-ne v1, v8, :cond_a7

    iget-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    :cond_a7
    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->makeExtensionsImmutable()V

    throw v0

    :cond_ab
    :try_start_ab
    invoke-virtual {p1, v4}, Lcom/a/a/d;->e(I)V
    :try_end_ae
    .catch Lcom/a/a/j; {:try_start_ab .. :try_end_ae} :catch_72
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_fd
    .catchall {:try_start_ab .. :try_end_ae} :catchall_76

    move v0, v1

    goto/16 :goto_14

    :sswitch_b1
    and-int/lit8 v1, v0, 0x2

    if-eq v1, v6, :cond_205

    :try_start_b5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;
    :try_end_bc
    .catch Lcom/a/a/j; {:try_start_b5 .. :try_end_bc} :catch_1ae
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_bc} :catch_1b9
    .catchall {:try_start_b5 .. :try_end_bc} :catchall_1f3

    or-int/lit8 v1, v0, 0x2

    :goto_be
    :try_start_be
    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/a/a/d;->m()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_cb
    .catch Lcom/a/a/j; {:try_start_be .. :try_end_cb} :catch_72
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_cb} :catch_fd
    .catchall {:try_start_be .. :try_end_cb} :catchall_76

    move v0, v1

    goto/16 :goto_14

    :sswitch_ce
    :try_start_ce
    invoke-virtual {p1}, Lcom/a/a/d;->s()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/a/a/d;->d(I)I

    move-result v4

    and-int/lit8 v1, v0, 0x2

    if-eq v1, v6, :cond_202

    invoke-virtual {p1}, Lcom/a/a/d;->w()I

    move-result v1

    if-lez v1, :cond_202

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;
    :try_end_e7
    .catch Lcom/a/a/j; {:try_start_ce .. :try_end_e7} :catch_1ae
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_e7} :catch_1b9
    .catchall {:try_start_ce .. :try_end_e7} :catchall_1f3

    or-int/lit8 v1, v0, 0x2

    :goto_e9
    :try_start_e9
    invoke-virtual {p1}, Lcom/a/a/d;->w()I

    move-result v0

    if-lez v0, :cond_10a

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/a/a/d;->m()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_fc
    .catch Lcom/a/a/j; {:try_start_e9 .. :try_end_fc} :catch_72
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_fc} :catch_fd
    .catchall {:try_start_e9 .. :try_end_fc} :catchall_76

    goto :goto_e9

    :catch_fd
    move-exception v0

    :goto_fe
    :try_start_fe
    new-instance v2, Lcom/a/a/j;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/a/a/j;-><init>(Ljava/lang/String;)V

    .line 2000
    iput-object p0, v2, Lcom/a/a/j;->a:Lcom/a/a/n;

    .line 0
    throw v2
    :try_end_10a
    .catchall {:try_start_fe .. :try_end_10a} :catchall_76

    :cond_10a
    :try_start_10a
    invoke-virtual {p1, v4}, Lcom/a/a/d;->e(I)V
    :try_end_10d
    .catch Lcom/a/a/j; {:try_start_10a .. :try_end_10d} :catch_72
    .catch Ljava/io/IOException; {:try_start_10a .. :try_end_10d} :catch_fd
    .catchall {:try_start_10a .. :try_end_10d} :catchall_76

    move v0, v1

    goto/16 :goto_14

    :sswitch_110
    and-int/lit8 v1, v0, 0x4

    if-eq v1, v7, :cond_1ff

    :try_start_114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;
    :try_end_11b
    .catch Lcom/a/a/j; {:try_start_114 .. :try_end_11b} :catch_1ae
    .catch Ljava/io/IOException; {:try_start_114 .. :try_end_11b} :catch_1b9
    .catchall {:try_start_114 .. :try_end_11b} :catchall_1f3

    or-int/lit8 v1, v0, 0x4

    :goto_11d
    :try_start_11d
    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/a/a/d;->m()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_12a
    .catch Lcom/a/a/j; {:try_start_11d .. :try_end_12a} :catch_72
    .catch Ljava/io/IOException; {:try_start_11d .. :try_end_12a} :catch_fd
    .catchall {:try_start_11d .. :try_end_12a} :catchall_76

    move v0, v1

    goto/16 :goto_14

    :sswitch_12d
    :try_start_12d
    invoke-virtual {p1}, Lcom/a/a/d;->s()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/a/a/d;->d(I)I

    move-result v4

    and-int/lit8 v1, v0, 0x4

    if-eq v1, v7, :cond_1fc

    invoke-virtual {p1}, Lcom/a/a/d;->w()I

    move-result v1

    if-lez v1, :cond_1fc

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;
    :try_end_146
    .catch Lcom/a/a/j; {:try_start_12d .. :try_end_146} :catch_1ae
    .catch Ljava/io/IOException; {:try_start_12d .. :try_end_146} :catch_1b9
    .catchall {:try_start_12d .. :try_end_146} :catchall_1f3

    or-int/lit8 v1, v0, 0x4

    :goto_148
    :try_start_148
    invoke-virtual {p1}, Lcom/a/a/d;->w()I

    move-result v0

    if-lez v0, :cond_15c

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/a/a/d;->m()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_148

    :cond_15c
    invoke-virtual {p1, v4}, Lcom/a/a/d;->e(I)V
    :try_end_15f
    .catch Lcom/a/a/j; {:try_start_148 .. :try_end_15f} :catch_72
    .catch Ljava/io/IOException; {:try_start_148 .. :try_end_15f} :catch_fd
    .catchall {:try_start_148 .. :try_end_15f} :catchall_76

    move v0, v1

    goto/16 :goto_14

    :sswitch_162
    and-int/lit8 v1, v0, 0x8

    if-eq v1, v8, :cond_1f9

    :try_start_166
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;
    :try_end_16d
    .catch Lcom/a/a/j; {:try_start_166 .. :try_end_16d} :catch_1ae
    .catch Ljava/io/IOException; {:try_start_166 .. :try_end_16d} :catch_1b9
    .catchall {:try_start_166 .. :try_end_16d} :catchall_1f3

    or-int/lit8 v1, v0, 0x8

    :goto_16f
    :try_start_16f
    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/a/a/d;->m()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_17c
    .catch Lcom/a/a/j; {:try_start_16f .. :try_end_17c} :catch_72
    .catch Ljava/io/IOException; {:try_start_16f .. :try_end_17c} :catch_fd
    .catchall {:try_start_16f .. :try_end_17c} :catchall_76

    move v0, v1

    goto/16 :goto_14

    :sswitch_17f
    :try_start_17f
    invoke-virtual {p1}, Lcom/a/a/d;->s()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/a/a/d;->d(I)I

    move-result v1

    and-int/lit8 v4, v0, 0x8

    if-eq v4, v8, :cond_19a

    invoke-virtual {p1}, Lcom/a/a/d;->w()I

    move-result v4

    if-lez v4, :cond_19a

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    or-int/lit8 v0, v0, 0x8

    :cond_19a
    :goto_19a
    invoke-virtual {p1}, Lcom/a/a/d;->w()I

    move-result v4

    if-lez v4, :cond_1b4

    iget-object v4, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/a/a/d;->m()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19a

    :catch_1ae
    move-exception v1

    move-object v9, v1

    move v1, v0

    move-object v0, v9

    goto/16 :goto_73

    :cond_1b4
    invoke-virtual {p1, v1}, Lcom/a/a/d;->e(I)V
    :try_end_1b7
    .catch Lcom/a/a/j; {:try_start_17f .. :try_end_1b7} :catch_1ae
    .catch Ljava/io/IOException; {:try_start_17f .. :try_end_1b7} :catch_1b9
    .catchall {:try_start_17f .. :try_end_1b7} :catchall_1f3

    goto/16 :goto_14

    :catch_1b9
    move-exception v1

    move-object v9, v1

    move v1, v0

    move-object v0, v9

    goto/16 :goto_fe

    :cond_1bf
    and-int/lit8 v1, v0, 0x1

    if-ne v1, v3, :cond_1cb

    iget-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    :cond_1cb
    and-int/lit8 v1, v0, 0x2

    if-ne v1, v6, :cond_1d7

    iget-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    :cond_1d7
    and-int/lit8 v1, v0, 0x4

    if-ne v1, v7, :cond_1e3

    iget-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    :cond_1e3
    and-int/lit8 v0, v0, 0x8

    if-ne v0, v8, :cond_1ef

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    :cond_1ef
    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->makeExtensionsImmutable()V

    return-void

    :catchall_1f3
    move-exception v1

    move-object v9, v1

    move v1, v0

    move-object v0, v9

    goto/16 :goto_77

    :cond_1f9
    move v1, v0

    goto/16 :goto_16f

    :cond_1fc
    move v1, v0

    goto/16 :goto_148

    :cond_1ff
    move v1, v0

    goto/16 :goto_11d

    :cond_202
    move v1, v0

    goto/16 :goto_e9

    :cond_205
    move v1, v0

    goto/16 :goto_be

    :cond_208
    move v1, v0

    goto/16 :goto_5e

    :cond_20b
    move v1, v0

    goto/16 :goto_34

    :sswitch_data_20e
    .sparse-switch
        0x0 -> :sswitch_25
        0x8 -> :sswitch_27
        0xa -> :sswitch_43
        0x10 -> :sswitch_b1
        0x12 -> :sswitch_ce
        0x18 -> :sswitch_110
        0x1a -> :sswitch_12d
        0x20 -> :sswitch_162
        0x22 -> :sswitch_17f
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/a/a/d;Lcom/a/a/f;Lcom/nuance/connect/proto/Prediction$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;-><init>(Lcom/a/a/d;Lcom/a/a/f;)V

    return-void
.end method

.method private constructor <init>(Lcom/a/a/h$a;)V
    .registers 3

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/a/a/h;-><init>(Lcom/a/a/h$a;)V

    iput-byte v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->memoizedIsInitialized:B

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/h$a;Lcom/nuance/connect/proto/Prediction$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;-><init>(Lcom/a/a/h$a;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/a/a/h;-><init>()V

    iput-byte v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->memoizedIsInitialized:B

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->memoizedSerializedSize:I

    return-void
.end method

.method static synthetic access$2100(Lcom/nuance/connect/proto/Prediction$PredictionResultV1;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/nuance/connect/proto/Prediction$PredictionResultV1;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/nuance/connect/proto/Prediction$PredictionResultV1;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/nuance/connect/proto/Prediction$PredictionResultV1;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/nuance/connect/proto/Prediction$PredictionResultV1;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/nuance/connect/proto/Prediction$PredictionResultV1;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/nuance/connect/proto/Prediction$PredictionResultV1;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/nuance/connect/proto/Prediction$PredictionResultV1;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
    .registers 1

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->defaultInstance:Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    return-void
.end method

.method public static newBuilder()Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;
    .registers 1

    # invokes: Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;->create()Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;
    invoke-static {}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;->access$1900()Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/nuance/connect/proto/Prediction$PredictionResultV1;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;
    .registers 2

    invoke-static {}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->newBuilder()Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;->mergeFrom(Lcom/nuance/connect/proto/Prediction$PredictionResultV1;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0}, Lcom/a/a/p;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/a/a/f;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0, p1}, Lcom/a/a/p;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    return-object v0
.end method

.method public static parseFrom(Lcom/a/a/c;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0}, Lcom/a/a/p;->parseFrom(Lcom/a/a/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    return-object v0
.end method

.method public static parseFrom(Lcom/a/a/c;Lcom/a/a/f;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0, p1}, Lcom/a/a/p;->parseFrom(Lcom/a/a/c;Lcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    return-object v0
.end method

.method public static parseFrom(Lcom/a/a/d;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0}, Lcom/a/a/p;->parseFrom(Lcom/a/a/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    return-object v0
.end method

.method public static parseFrom(Lcom/a/a/d;Lcom/a/a/f;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0, p1}, Lcom/a/a/p;->parseFrom(Lcom/a/a/d;Lcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0}, Lcom/a/a/p;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/a/a/f;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0, p1}, Lcom/a/a/p;->parseFrom(Ljava/io/InputStream;Lcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0}, Lcom/a/a/p;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    return-object v0
.end method

.method public static parseFrom([BLcom/a/a/f;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0, p1}, Lcom/a/a/p;->parseFrom([BLcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    return-object v0
.end method


# virtual methods
.method public final getAttribute(I)I
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getAttributeCount()I
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getAttributeList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/a/a/n;
    .registers 2

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->getDefaultInstanceForType()Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
    .registers 2

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->defaultInstance:Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    return-object v0
.end method

.method public final getFullSpell(I)I
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getFullSpellCount()I
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getFullSpellList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    return-object v0
.end method

.method public final getParserForType()Lcom/a/a/p;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/p",
            "<",
            "Lcom/nuance/connect/proto/Prediction$PredictionResultV1;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->PARSER:Lcom/a/a/p;

    return-object v0
.end method

.method public final getPhrase(I)I
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getPhraseCount()I
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getPhraseList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    return-object v0
.end method

.method public final getSerializedSize()I
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 0
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    :goto_6
    return v0

    :cond_7
    move v1, v2

    move v3, v2

    :goto_9
    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_26

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3000
    invoke-static {v0}, Lcom/a/a/e;->g(I)I

    move-result v0

    .line 0
    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    :cond_26
    add-int/lit8 v0, v3, 0x0

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->getPhraseList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int v4, v0, v1

    move v1, v2

    move v3, v2

    :goto_36
    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_53

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4000
    invoke-static {v0}, Lcom/a/a/e;->g(I)I

    move-result v0

    .line 0
    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_36

    :cond_53
    add-int v0, v4, v3

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->getSpellList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int v4, v0, v1

    move v1, v2

    move v3, v2

    :goto_63
    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_80

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5000
    invoke-static {v0}, Lcom/a/a/e;->g(I)I

    move-result v0

    .line 0
    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_63

    :cond_80
    add-int v0, v4, v3

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->getFullSpellList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int v3, v0, v1

    move v1, v2

    :goto_8f
    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_ac

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 6000
    invoke-static {v0}, Lcom/a/a/e;->g(I)I

    move-result v0

    .line 0
    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_8f

    :cond_ac
    add-int v0, v3, v1

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->getAttributeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->memoizedSerializedSize:I

    goto/16 :goto_6
.end method

.method public final getSpell(I)I
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getSpellCount()I
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getSpellList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 4

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->memoizedIsInitialized:B

    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    :cond_b
    iput-byte v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public final bridge synthetic newBuilderForType()Lcom/a/a/n$a;
    .registers 2

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->newBuilderForType()Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;
    .registers 2

    invoke-static {}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->newBuilder()Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/a/a/n$a;
    .registers 2

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->toBuilder()Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;
    .registers 2

    invoke-static {p0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->newBuilder(Lcom/nuance/connect/proto/Prediction$PredictionResultV1;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    invoke-super {p0}, Lcom/a/a/h;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/a/a/e;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->getSerializedSize()I

    move v1, v2

    :goto_5
    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_21

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Lcom/a/a/e;->a(II)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_21
    move v1, v2

    :goto_22
    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3e

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Lcom/a/a/e;->a(II)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_22

    :cond_3e
    move v1, v2

    :goto_3f
    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5b

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Lcom/a/a/e;->a(II)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3f

    :cond_5b
    :goto_5b
    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_76

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/a/a/e;->a(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    :cond_76
    return-void
.end method
