.class Lcom/nuance/connect/internal/GenericProperty$StringProperty$SimpleStringProperty;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/GenericProperty$StringProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleStringProperty"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4adc9e02ca32f695L


# instance fields
.field source:Ljava/lang/String;

.field value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/nuance/connect/internal/Property$Source;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty$SimpleStringProperty;->value:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/nuance/connect/internal/Property$Source;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty$SimpleStringProperty;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getSource()Lcom/nuance/connect/internal/Property$Source;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty$SimpleStringProperty;->source:Ljava/lang/String;

    invoke-static {v0}, Lcom/nuance/connect/internal/Property$Source;->from(Ljava/lang/String;)Lcom/nuance/connect/internal/Property$Source;

    move-result-object v0

    return-object v0
.end method

.method getValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty$SimpleStringProperty;->value:Ljava/lang/String;

    return-object v0
.end method
