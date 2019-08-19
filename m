Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C103949FA
	for <lists+kexec@lfdr.de>; Mon, 19 Aug 2019 18:33:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+QUPZ1MSfRhxyYy51inKY5io2HNGidVTtQBoH9jvLRw=; b=UQfUntzjzeVQbB
	ydHWZ0SzMfqZaxAillbGPHBNIax2DDe6i43aTW4opIEgvb0XoOcd5gyS8cYFOW4YGFEBzzn90L6K1
	2UjjV5154gIb0AHsK6f4s7SCtSb/sOPwxf0o3XBE2JolSnNit2OLYPvKwmHvsqifUXb4Dv1dLfnZX
	XVilws2M4A4BGaQGstJlTEc303H6xmCm4pr0Kt8mnrzc0kZx3WQ/UnH5oH+v/XeROWw+oLraTEKbs
	PJh+kV3Ybq21yY6UH3eWUeqYw6K+E0uTlKLN2f3cGdgMHdrPFlmXRfWSJDi0Mw5OEYz08I65Wyv5U
	kRfPIOJn+072RzPKTSFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzkbN-0004Ie-4d; Mon, 19 Aug 2019 16:33:49 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzkbJ-0004HS-Hi
 for kexec@lists.infradead.org; Mon, 19 Aug 2019 16:33:46 +0000
Received: by mail-ed1-x544.google.com with SMTP id g8so2259078edm.6
 for <kexec@lists.infradead.org>; Mon, 19 Aug 2019 09:33:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yVK+oDacf76Bx/B5cuYpj3efTA3uTCksTraTbtiiMb0=;
 b=ZEMpBjD1i8baVAX/ysJWrVswsclG5Ad98mIeqTE/tdXxI8qBuXPct792egADG2RR7r
 4WqNdNKNoNpDzDDyL8S5UElB1wql/7fcm9FEC9kEb9rR1nmCuc33o1Mu3CGfUOO4vaD1
 fVtFr3LF4sw1xugNbHHRMApJ+dbe8tCgl859HeK8Ezaw612OsfP2u11M5CKtz3i9aYuB
 raHJWrkU32+i55vWzSvZZhUa2Lorjv/Xn4/PRO2V0oFVOxB+GkW2KnO7ujnITNFll6K/
 wXTKtGUMyYu2QqZe/sMjFRDDbes+QqWwm1b95GyQAS45k3C2khb54EAK0qO674IRBVq6
 UlOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yVK+oDacf76Bx/B5cuYpj3efTA3uTCksTraTbtiiMb0=;
 b=c0kQFubTspW1G8LW349su/tvYUcJEMzttXUgSNYj/+pkeS4Q55jaYAm41WVMTAfLE8
 Mf2T2T1wEeS5qdSRBpcNM0w4ZnjBuSgcnCbHXT6R/fse+UYj0SNaM6HNTIp00/EqMK+C
 q9UxkKtDWgON0g511/YMw4SRxanCzxjg1cKcr3CE2VsXgOd6gUVmpbZbldw0RhM5Nsj2
 fdCngvD0PTldIJpgerbWWJjqg2gSLYs5Q+hAStYVMvgxRVe4x50a0dxHVxcjR9chKFG8
 n5bRXKZzKzY2kCGpVy4GwMSvKthjvcyVuaITdz5rDOR3eNRtIcZIwR2TIrDrXbW1FQig
 znPA==
X-Gm-Message-State: APjAAAWXj8mKKtYu0D0MFMSaPJd+BbZEJoIPcJm/dl+BEMf0ML+un6/V
 ipBXBZCzlwGY8rpVG8HeResOd7POCpqwMYy4Gk6/Ng==
X-Google-Smtp-Source: APXvYqyjbCqvgSjNDeQHl6JxdPMDE41wKcHDp+hgvJVj2Py8dcsk85GHr9ynLPCamRht+oDfymAzPK5UbbwLGbxAp2Y=
X-Received: by 2002:a17:906:ccc1:: with SMTP id
 ot1mr22297087ejb.156.1566232422354; 
 Mon, 19 Aug 2019 09:33:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190817024629.26611-1-pasha.tatashin@soleen.com>
 <20190817024629.26611-4-pasha.tatashin@soleen.com>
 <20190819155824.GE9927@lakrids.cambridge.arm.com>
In-Reply-To: <20190819155824.GE9927@lakrids.cambridge.arm.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Mon, 19 Aug 2019 12:33:31 -0400
Message-ID: <CA+CK2bD4zE6eieSW2OLQwOQC7=4ncDc8wK6ZjhDO3Dv+BUqnzQ@mail.gmail.com>
Subject: Re: [PATCH v2 03/14] arm64,
 hibernate: add trans_table public functions
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_093345_591053_514F501B 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: Sasha Levin <sashal@kernel.org>, Vladimir Murzin <vladimir.murzin@arm.com>,
 Jonathan Corbet <corbet@lwn.net>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morris <jmorris@namei.org>,
 linux-mm <linux-mm@kvack.org>, James Morse <james.morse@arm.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, will@kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 11:58 AM Mark Rutland <mark.rutland@arm.com> wrote:
>
> On Fri, Aug 16, 2019 at 10:46:18PM -0400, Pavel Tatashin wrote:
> > trans_table_create_copy() and trans_table_map_page() are going to be
> > the basis for public interface of new subsystem that handles page
> > tables for cases which are between kernels: kexec, and hibernate.
>
> While the architecture uses the term 'translation table', in the kernel
> we generally use 'pgdir' or 'pgd' to refer to the tables, so please keep
> to that naming scheme.

The idea is to have a unique name space for new subsystem of page
tables that are used between kernels:
between stage 1 and stage 2 kexec kernel, and similarly between
kernels during hibernate boot process.

I picked: "trans_table" that stands for transitional page table:
meaning they are used only during transition between worlds.

All public functions in this subsystem will have trans_table_* prefix,
and page directory will be named: "trans_table". If this is confusing,
I can either use a different prefix, or describe what "trans_table"
stand for in trans_table.h/.c

Thank you,
Pasha

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
