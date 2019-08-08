Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFF98859DE
	for <lists+kexec@lfdr.de>; Thu,  8 Aug 2019 07:42:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9whyWFeKK0kcRxJsrQlDMsbLlOXvYoky55GpNS8i5FU=; b=LiYbcossXlXvcZ
	6y93ISZPIUShjwtERDojphCOrcfUv5sdTfP8aL0jAlF1nb/qzQlqDxRO3KV+itVjKYhDD7tGRLC+j
	OOgwp3Uol95BbvlHaUSPFFmraACjpDXxJ/qTX9MS3q7AW+PS1J1XAbm/8O4fTkzdbqDDxzGVUOZOb
	QMZtxs/fT8j6n9cHH2hqZbvVx95z82SmhfiXGxc41IWSFVXSHz8G3LwnFPkF60b/WUUAK4LgxfPqz
	USqcwuHGCEnGNmgfH058FLIyxJiNm4UTM9kvM/J+HQeaIvy2JVdb820t7212dvGtbCOVmbJ87vqP/
	5tEKJGLr7uhjHaoAsuUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvbBl-0007ZO-P5; Thu, 08 Aug 2019 05:42:14 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvbBh-0007Z4-V8
 for kexec@lists.infradead.org; Thu, 08 Aug 2019 05:42:11 +0000
Received: by mail-ot1-x342.google.com with SMTP id x21so20634751otq.12
 for <kexec@lists.infradead.org>; Wed, 07 Aug 2019 22:42:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=z7F16gWt6CG6Dis1wkwgKShaM3nkA2ktQnhP1yrDL54=;
 b=ctvX7ZiAMG9XRRqxL0NsoHVV4cw9SASk627MtNnvGjYA9cXPWjgkDPupHph7zR2r8K
 z/hL5sZw42rnp8YKuL+1wa+ZNWQD5jI2pki3UmQi9Mr9e9MMCXtyn8k0bcmXnbR2vBUe
 8z0e5cRq3MyO8/kkhkUkr514pRyZ/EXC7R1QBLL7gH0HGRsvytmEIjqMfrWVr5t2z/rJ
 xqQIvvME21BFFrKwsAt2ddaKOBTTg9pMw57gET0Lnf4FNZJ0ksit/Voev0c2pbyIjJDI
 ct1OnLG8JxJNrTS4XAmCV5gj+T2c0Qj3SrOoVhj8SlGtXeRpIbqtg3H10VTxbR814lI9
 1Rnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=z7F16gWt6CG6Dis1wkwgKShaM3nkA2ktQnhP1yrDL54=;
 b=WM/S+aaZdXP/ggc8nrvkgPpCKO+IRQvYAHLRMP3QG7ZGSp8LEh+29FXHPBmbRo+UwD
 bLx6tAdMizVp/ThlrU61jUnqGNEVGWvqmlJOQhesWjJMiFuwiFgRKc5IcSaC3HPYY9rU
 HwbtEmeBIIg/73ZOKTfHaHDHkhJzjPKUyCm5XRJA2mbfWvYkxlLW439urRCkBhtVy9oW
 dfMv695tk3bgpjLVSngCi26V2b4zojsGnyy/PN8jLYrifFNgW7yt98rd5kOtVyvCNt2g
 djVuzJ8fKbkKCve6qomAVzTQxb0Kn0brbnZFEqp8rMhcMlxALgW0cwiImeLYSObk+XP7
 aOLw==
X-Gm-Message-State: APjAAAX9kBX/P2CWDMlh6waegB4f8DX5Juvhtd4hgdxR7aSUGzSZBlRn
 1r+T83LY7/Cy4bnmoGCo8TflxhoRSo/0IrO14w==
X-Google-Smtp-Source: APXvYqzfJmybnfFUCmZ62VHpiKZ3A2/FlZApcImHFhPUmGKOMqqvdoNOYq1SLyQrkOLhwBRkLV5sGZMMgKNTp2tmKH0=
X-Received: by 2002:a6b:7d49:: with SMTP id d9mr13259578ioq.50.1565242929081; 
 Wed, 07 Aug 2019 22:42:09 -0700 (PDT)
MIME-Version: 1.0
References: <1564995539-29609-1-git-send-email-kernelfans@gmail.com>
 <20190807025843.GA4776@dhcp-128-65.nay.redhat.com>
 <20190807075226.GA10392@mypc>
 <alpine.DEB.2.21.1908071504310.24014@nanos.tec.linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1908071504310.24014@nanos.tec.linutronix.de>
From: Pingfan Liu <kernelfans@gmail.com>
Date: Thu, 8 Aug 2019 13:41:57 +0800
Message-ID: <CAFgQCTs7XN3xBPt64jPNb4wCGAZRmYSjhPM=tgcLriVCEx+uDA@mail.gmail.com>
Subject: Re: [PATCH 0/4] x86/mce: protect nr_cpus from rebooting by broadcast
 mce
To: Thomas Gleixner <tglx@linutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_224210_029807_81408A4C 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kernelfans[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Dave Hansen <dave.hansen@linux.intel.com>, Baoquan He <bhe@redhat.com>,
 Tony Luck <tony.luck@intel.com>, Peter Zijlstra <peterz@infradead.org>,
 kexec@lists.infradead.org, Jacob Pan <jacob.jun.pan@linux.intel.com>,
 x86@kernel.org, Michal Hocko <mhocko@suse.com>,
 LKML <linux-kernel@vger.kernel.org>, Daniel Drake <drake@endlessm.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Masami Hiramatsu <mhiramat@kernel.org>, Andy Lutomirski <luto@kernel.org>,
 "H. Peter Anvin" <hpa@zytor.com>, Qian Cai <cai@lca.pw>,
 Dave Young <dyoung@redhat.com>, Xunlei Pang <xlpang@linux.alibaba.com>,
 Vlastimil Babka <vbabka@suse.cz>, Eric Biederman <ebiederm@xmission.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Wed, Aug 7, 2019 at 9:07 PM Thomas Gleixner <tglx@linutronix.de> wrote:
>
[...]
> > > >
> > > > *** Back ground ***
> > > >
> > > > On x86 it's required to have all logical CPUs set CR4.MCE=1. Otherwise, a
> > > > broadcast MCE observing CR4.MCE=0b on any core will shutdown the machine.
>
> Pingfan, please trim your replies and remove the useless gunk after your answer.
OK. I will.

Thanks,
    Pingfan
>
> Thanks,
>
>         tglx

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
