Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E573D95D9E
	for <lists+kexec@lfdr.de>; Tue, 20 Aug 2019 13:42:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=++XVGH6P3SVn0W2OKlCbmUt3cvt9IKVaUtz2aS14iaM=; b=doW+eRwtbGHUrR
	B2qzbh6NmL0PvpnbCLrYdouiPbpNZsyGaE0kjTm7Q9V7vdUAExMNdWJ57kNeHYXll0D7Ex3/+hoAy
	TH40nnqZaVPU5ZMHoxwewTUUJcgkvg051SG1qAtwXqZk3nJaRi6nUJxEveBW2gzy1Z5H9sc6k6SZf
	8BasR4zuvMt80MeV1sm+Mss6VHNOtuQyxdh15LVH+MdV/TY8F9UEAZLmBRA5Z6q2PaJ/RVt0HyWxl
	GJSvixpE3GxNbSzifsDhWRtgei7CEK2d5LKE57zLOunRdKGQa7V4oSQchD4ruyjll586L9xbtBWp2
	DBk6960oJrp6AYjqJgDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i02Wh-0000vA-RB; Tue, 20 Aug 2019 11:42:11 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i02We-0000uO-1s
 for kexec@lists.infradead.org; Tue, 20 Aug 2019 11:42:09 +0000
Received: by mail-ed1-x544.google.com with SMTP id f22so5944500edt.4
 for <kexec@lists.infradead.org>; Tue, 20 Aug 2019 04:42:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3a3ksvO52CtO/ttkK+4sBJJjCffAnNgMq3ot08D8hTE=;
 b=YixUBs68BTWBicnObm8UhXLg9oTc2+ORLcfgUd/Du/W1MFNGMBmeO9v0CpCKPNDfOL
 IOv3P3Sy0KW3Cf/mHqmQhC5dYF048v5l9MKyEPipLYYbjwxD0H59P87oFZcAUxJs8Bpg
 TZ1aEoxr3qON74esiOLqh6pfyJNutI2zVrynCMtzDWFU5/3lq5/KWMFf5eqyhEf4R0t8
 pbWvw0NqWOv3EnLSCIbWXXsihVYEJL1fI+6iT4Zmbmou9OHn04p1+7PzMZzZ7yyKCqyL
 Kk9JSwipQzT+aeLr8A97jVZmZOhpTYYMCBCuIaYQAxnOVqXF/8pnIkDuPnZxsqpfAfZv
 fUjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3a3ksvO52CtO/ttkK+4sBJJjCffAnNgMq3ot08D8hTE=;
 b=hKK9Vb0pJW6KnQbOCA9d4vhcqubsbVoYkJq+hjCmLID2/lnDoXq03zIy6ZhpWBJXGT
 5bjzQpaAvw9QqrnI6z3b6rTvUwE4PvBP+Sr9osqxDxEQusrjSTlEFHIBIzA70gSkjXGs
 L1IcSz//JzgS4+EWCHxG3SMTEBbhZEWXMx8UyjgqiVU3hJWbLBaI5XgwLrT5DP7qSCdI
 93DPrXLiORK6UpRtOf1Y/0uROxPPQBeKrA4tdTfq5PSLU68orEEh2x5MmgwjklHSwUk5
 DfI77WLu3AuENqhgPF2wFONO5WYEil/2MG850GEcbsdDAar0TiD0PfR1bOjGy1uuE1qt
 0DDw==
X-Gm-Message-State: APjAAAW3E/ABfx7WIweToyRTmSFGTPty99MR/vy3U5ZDlsGbTKt7KQMn
 TaFKYfuZiZAFTxXJiPDfPW2fmrAJWbgMJ6KmGTJnzoMg
X-Google-Smtp-Source: APXvYqys5DbTiUd9mTqbI3sEh4h1TdEgJjNdpUHqISVmYQkhBiZ+C1YQY1SvjKZBeVx8+M4TD3mTf8Wtu+RfofBl0sA=
X-Received: by 2002:a17:906:1112:: with SMTP id
 h18mr26088394eja.165.1566301326474; 
 Tue, 20 Aug 2019 04:42:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190817024629.26611-1-pasha.tatashin@soleen.com>
 <20190817024629.26611-4-pasha.tatashin@soleen.com>
 <20190819155824.GE9927@lakrids.cambridge.arm.com>
 <CA+CK2bD4zE6eieSW2OLQwOQC7=4ncDc8wK6ZjhDO3Dv+BUqnzQ@mail.gmail.com>
 <20190820113000.GA49252@lakrids.cambridge.arm.com>
In-Reply-To: <20190820113000.GA49252@lakrids.cambridge.arm.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Tue, 20 Aug 2019 07:41:55 -0400
Message-ID: <CA+CK2bDcS-nSLhSjuwEStnxD4FrA+P0LvyQfqKy4g1zaqXZPrQ@mail.gmail.com>
Subject: Re: [PATCH v2 03/14] arm64,
 hibernate: add trans_table public functions
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_044208_507415_E78725C1 
X-CRM114-Status: GOOD (  14.34  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

> > > While the architecture uses the term 'translation table', in the kernel
> > > we generally use 'pgdir' or 'pgd' to refer to the tables, so please keep
> > > to that naming scheme.
> >
> > The idea is to have a unique name space for new subsystem of page
> > tables that are used between kernels:
> > between stage 1 and stage 2 kexec kernel, and similarly between
> > kernels during hibernate boot process.
> >
> > I picked: "trans_table" that stands for transitional page table:
> > meaning they are used only during transition between worlds.
> >
> > All public functions in this subsystem will have trans_table_* prefix,
> > and page directory will be named: "trans_table". If this is confusing,
> > I can either use a different prefix, or describe what "trans_table"
> > stand for in trans_table.h/.c
>
> Ok.
>
> I think that "trans_table" is unfortunately confusing, as it clashes
> with the architecture terminology, and differs from what we have
> elsewhere.
>
> I think that "trans_pgd" would be better, as that better aligns with
> what we have elsewhere, and avoids the ambiguity.
>

Sounds good. I will rename trans_table* with trans_pgd*, and will also
add a note to the comments explaining what it stands for.

Thank you,
Pasha

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
