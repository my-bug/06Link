.class Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;
.super Ljava/lang/Object;
.source "SilkNSQState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/jaredmdobson/concentus/SilkNSQState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NSQ_del_dec_struct"
.end annotation


# instance fields
.field LF_AR_Q14:I

.field final Pred_Q15:[I

.field final Q_Q10:[I

.field RD_Q10:I

.field final RandState:[I

.field Seed:I

.field SeedInit:I

.field final Shape_Q14:[I

.field final Xq_Q14:[I

.field sAR2_Q14:[I

.field final sLPC_Q14:[I

.field final synthetic this$0:Lio/github/jaredmdobson/concentus/SilkNSQState;


# direct methods
.method constructor <init>(Lio/github/jaredmdobson/concentus/SilkNSQState;I)V
    .locals 1

    .line 97
    iput-object p1, p0, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->this$0:Lio/github/jaredmdobson/concentus/SilkNSQState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    sget p1, Lio/github/jaredmdobson/concentus/SilkConstants;->NSQ_LPC_BUF_LENGTH:I

    add-int/lit8 p1, p1, 0x50

    new-array p1, p1, [I

    iput-object p1, p0, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    const/16 p1, 0x20

    .line 86
    new-array v0, p1, [I

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->RandState:[I

    .line 87
    new-array v0, p1, [I

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->Q_Q10:[I

    .line 88
    new-array v0, p1, [I

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->Xq_Q14:[I

    .line 89
    new-array v0, p1, [I

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->Pred_Q15:[I

    .line 90
    new-array p1, p1, [I

    iput-object p1, p0, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->Shape_Q14:[I

    const/4 p1, 0x0

    .line 92
    iput p1, p0, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->LF_AR_Q14:I

    .line 93
    iput p1, p0, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->Seed:I

    .line 94
    iput p1, p0, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->SeedInit:I

    .line 95
    iput p1, p0, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->RD_Q10:I

    .line 98
    new-array p1, p2, [I

    iput-object p1, p0, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->sAR2_Q14:[I

    return-void
.end method


# virtual methods
.method Assign(Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;)V
    .locals 1

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0, p1, v0}, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->PartialCopyFrom(Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;I)V

    return-void
.end method

.method PartialCopyFrom(Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;I)V
    .locals 3

    .line 102
    iget-object v0, p1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    iget-object v1, p0, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    sget v2, Lio/github/jaredmdobson/concentus/SilkConstants;->NSQ_LPC_BUF_LENGTH:I

    add-int/lit8 v2, v2, 0x50

    sub-int/2addr v2, p2

    invoke-static {v0, p2, v1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    iget-object p2, p1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->RandState:[I

    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->RandState:[I

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    iget-object p2, p1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->Q_Q10:[I

    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->Q_Q10:[I

    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iget-object p2, p1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->Xq_Q14:[I

    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->Xq_Q14:[I

    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    iget-object p2, p1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->Pred_Q15:[I

    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->Pred_Q15:[I

    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    iget-object p2, p1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->Shape_Q14:[I

    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->Shape_Q14:[I

    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    iget-object p2, p1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->sAR2_Q14:[I

    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->sAR2_Q14:[I

    array-length v2, v0

    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    iget p2, p1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->LF_AR_Q14:I

    iput p2, p0, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->LF_AR_Q14:I

    .line 110
    iget p2, p1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->Seed:I

    iput p2, p0, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->Seed:I

    .line 111
    iget p2, p1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->SeedInit:I

    iput p2, p0, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->SeedInit:I

    .line 112
    iget p1, p1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->RD_Q10:I

    iput p1, p0, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->RD_Q10:I

    return-void
.end method
