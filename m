Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36D061495E8
	for <lists+kexec@lfdr.de>; Sat, 25 Jan 2020 14:27:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VZXcAZlN7L5z8MmL0gSgmQ/9uj8dHqbn4Flx+KE2oRc=; b=Aeou0SwwrWhJIu
	SVFP0Gr/P1+rQEYjA3e6dZqYzRxvn3AfkuTQ//DlX5qpFKzkO7kq7UhKXf8EEFYw/6ljHgZNj6eh+
	BJ1JS1GbV6/yur0OKuaB/C6ARsFvyU8comDKcqcj2t/d2+AZOK8OOeGP8u8P5GiaszDJdbchfCDbV
	z2YGsRy+614keSAnf8j8TmdM2CPasU8a0CCishf66oM/liNRITPwkN9MMjS0kHNK4UfpF+CG1jSAS
	trmrKsrHp4xsI/zN2G0BlUyFi5Hz8Q1M+TgVFfsXIodkN7Kat7GroUfqYQygdI/dizMSbUkLnJY9j
	39CRVMgr1ZTLKhGyzqJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivLT1-0003KX-Gy; Sat, 25 Jan 2020 13:27:15 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivLSx-0003K1-Pd
 for kexec@lists.infradead.org; Sat, 25 Jan 2020 13:27:13 +0000
Received: by mail-io1-xd44.google.com with SMTP id t26so4957926ioi.13
 for <kexec@lists.infradead.org>; Sat, 25 Jan 2020 05:27:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jFSby4jpU672POOTQ5aJD+MMYMnoY9gYo83gL/3QmgM=;
 b=o3zwdhNdAxwsJRTgPNWDgyS1kUEid918OP4lhihaBH2kcmVv8au1eTBRee2sUenYSd
 yX2k0BNoNwlB52gO6vBW3E7KswaalWdN5bkQVU89S8tLK8lbIC0kyZGML0zSY+ECy5JJ
 VQxAzDgcBZBISbwKjTLvexNe9Pw0e5d+Olxa8kCX9jBByj+ZZvt3VtrTqiesPcwyjQUN
 YYWwSShcotQIPq2yGJi6akxKoRaiOAfgsoIRq4e0MqT+UMoSo4ePFGUrgzTvJAP+NbYO
 +ulmzBTqwwXzMVnBZKJhXWIZ5zBd3zXhGNoJXPEjVm66mTvw52lbcxUtOtTfdBRZ44fs
 jWoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jFSby4jpU672POOTQ5aJD+MMYMnoY9gYo83gL/3QmgM=;
 b=jsCIuiBAvDwP2+sxorfXWGUGt9HKlOZjW5XQZBEAqqPA1fq3bZTUMRQFjJNUOzWzHl
 CiGxCbODUm0iVi3mDAC+3rJs4zsBIq+64CuhVSU0G4rnmz8dKCAxEcGgg0Cu4iraS4n4
 MpGDbfnMPeKNYpgazYzmZcPVf3GHuycuYZRRFZhocDfWcIlq+c7zqBhpd8pEA8Zaw88z
 vVkQmdbj1O0PgdSnSVHUElof3fAvo/4LAy03oRYiZep3mguQBovg0Vv8qgzINdwD6/P9
 ipdxxY2Rsnj37jOHBc19qtcHQGqDIJghXeHVCJewe7r4WIIZ0dtauUFyoPWte7SDuOcG
 qBNg==
X-Gm-Message-State: APjAAAUx4iUjup30vuhsW1roNymQiOk8AQfq+tHYJW0Fj2eDQrSoTZme
 NNfkTXn8COo8flw/cmucaPqUK832dpEv7TDk4g==
X-Google-Smtp-Source: APXvYqzFqso5fExE/vN7lqD+kDPUfbOIYxpeCOxPq/EaJjfGULlLyiKommh0F7rW9mohytKbK/l/29LoeED86UFTwN4=
X-Received: by 2002:a02:a60e:: with SMTP id c14mr6561596jam.80.1579958830183; 
 Sat, 25 Jan 2020 05:27:10 -0800 (PST)
MIME-Version: 1.0
References: <1579487594-28889-1-git-send-email-kernelfans@gmail.com>
 <20200120072939.GD18451@dhcp22.suse.cz>
 <20200123191047.bc51b301e5ea0aae6eeecbd5@linux-foundation.org>
 <20200124064932.GN29276@dhcp22.suse.cz>
In-Reply-To: <20200124064932.GN29276@dhcp22.suse.cz>
From: Pingfan Liu <kernelfans@gmail.com>
Date: Sat, 25 Jan 2020 21:26:58 +0800
Message-ID: <CAFgQCTtSQb8o1rwsTK77zO__=iyrMvKWREuL5xzComSHLr=JcA@mail.gmail.com>
Subject: Re: [PATCHv2] mm/sparse: reset section's mem_map when fully
 deactivated
To: Michal Hocko <mhocko@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200125_052711_834741_DEE5C4E6 
X-CRM114-Status: GOOD (  17.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kernelfans[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>, Baoquan He <bhe@redhat.com>,
 David Hildenbrand <david@redhat.com>,
 Kexec Mailing List <kexec@lists.infradead.org>, Linux-MM <linux-mm@kvack.org>,
 Qian Cai <cai@lca.pw>, Andrew Morton <akpm@linux-foundation.org>,
 Dan Williams <dan.j.williams@intel.com>, Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Fri, Jan 24, 2020 at 2:49 PM Michal Hocko <mhocko@suse.com> wrote:
>
> On Thu 23-01-20 19:10:47, Andrew Morton wrote:
> > On Mon, 20 Jan 2020 08:29:39 +0100 Michal Hocko <mhocko@suse.com> wrote:
> >
> > > On Mon 20-01-20 10:33:14, Pingfan Liu wrote:
> > > > After commit ba72b4c8cf60 ("mm/sparsemem: support sub-section hotplug"),
> > > > when a mem section is fully deactivated, section_mem_map still records the
> > > > section's start pfn, which is not used any more and will be reassigned
> > > > during re-added.
> > > >
> > > > In analogy with alloc/free pattern, it is better to clear all fields of
> > > > section_mem_map.
> > > >
> > > > Beside this, it breaks the user space tool "makedumpfile" [1], which makes
> > > > assumption that a hot-removed section has mem_map as NULL, instead of
> > > > checking directly against SECTION_MARKED_PRESENT bit. (makedumpfile will be
> > > > better to change the assumption, and need a patch)
> > > >
> > > > The bug can be reproduced on IBM POWERVM by "drmgr -c mem -r -q 5" ,
> > > > trigger a crash, and save vmcore by makedumpfile
> > >
> > > While makedumpfile lives very closely to the kernel and occasional
> > > breakage is to be expected I still believe that Fixes: ba72b4c8cf60
> > > is due.
> >
> > But not a cc:stable?
>
> Well, I wouldn't say this is really critical. makedumpfile will get its
> fix... But if people think it would be useful in stable I won't oppose.
Yes, I think this patch is no more than a prototype improvement, and
makedumpfile has better to get its fix.
And I have sent a patch to kexec-list for it.
(http://lists.infradead.org/pipermail/kexec/2020-January/024406.html)

Thanks,
    Pingfan

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
