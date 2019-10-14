Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63E2FD662C
	for <lists+kexec@lfdr.de>; Mon, 14 Oct 2019 17:34:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r5XXVLzaA5Gculyg50rvMiYSx/kR+wkwKzTj7lW1o98=; b=Meqyo7DpIaRGzv
	6nLsUyTbLm/W137k+VP2MOwDX2DJiOaE8AxMSXRrksAG+hRGW1TuSjdiqZpeieU897Aysg/IDPClA
	Rq5GFTEnuuxcbD/KtxYzggoXWOxuOGxxjgwO/fNjbL+H/L2DZuFDzSd+dEcfDheVdU3+8kJY+jAPC
	uec0rbOV4zx02vooLM1y2VclP+jUS8fUNSKCzKtqnX+/aJbhwQxVYMp+oOCmmU6A0DzwF5C3VVaCE
	dMxz1V9ixukfQN3jugQKHos3U8oe9hJ8m3vs1QqaJHl1grm/wJr6rj1JVXOCavvAQwlRhW+87zzZh
	qW58dSdvymt/RvG7+L5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK2Mc-0002Fw-L2; Mon, 14 Oct 2019 15:34:26 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK2MZ-0002F1-Eo
 for kexec@lists.infradead.org; Mon, 14 Oct 2019 15:34:24 +0000
Received: by mail-qt1-x841.google.com with SMTP id j31so25994317qta.5
 for <kexec@lists.infradead.org>; Mon, 14 Oct 2019 08:34:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=zrqHEv4nHi+sN0Om5M3ZbJYqGC0cBLXNH2ku0StUbdE=;
 b=luLNBxuQTNJa+fKdTc/2LXZcaKkugTUKNdfTIidC2O5vKzTr/x90eFbx7j/9tUpbHm
 jliGJrGYg68iVwTVqc4XRBc22+JdQVpfqbmWvLAVUad1ne2cnPJlkzfjG/ycSU80xOUq
 pUQpruHDx1+UdtqpduYLHbw1QsUIfipQnO7z8xcjjLGYjp2RGIlNueOFGdfyicHWo5Ko
 AVP3v74tlOjWqstbVo7ntw6ElJT00qkeglTlvpHOmqdfVXoHE4e8mQNkg/zk02WgCNs3
 zSf+y6enISByXcWfQg5KiBKxAuRKdp1Y0im5IDdmON0tQdZ/yxgB1w1v7UZmQr51iEZF
 2IPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zrqHEv4nHi+sN0Om5M3ZbJYqGC0cBLXNH2ku0StUbdE=;
 b=XWP49BZgVzIxglOeePIMBC3Qkb9wncMb327Ag8F6ty7My9IMknvd0HqhfLSkJUwGqv
 vIHeKUWoL/VcdSGQIkA1EylZomg3jE20dFe+Gy90Fh/jkYV9MNwCmfMmXYTvHCBmk3lY
 GPCh2fzfGs/2XEGyAlj+z9sdCcPbtgqGLXQtllC9O6+MYRreKMcLi6yPUJ9pMIWPVUAB
 xrfNxtmRqRwc0v7vQaBDdzn9U9mXB09hgmLfgfqfCnkRG5igvEXvbX+e3eT6eQA2PRvU
 wuzbBVfgDlsx0iXi3wsWwi1FoO7FBsyIv0W5c3GUSmaM06v+bxxk4I+np4UcqxYNVDA7
 cFQw==
X-Gm-Message-State: APjAAAXvsmsumRMHeqPtCNvxo7L3T58pk6t4M5OxbHZg8s7v4h2QF2H2
 SSkMQJjzSMST9qLXHjB4WB7Ieg==
X-Google-Smtp-Source: APXvYqxekmzdMSjMjhAgFiOQx3s7qswq/tSgxGyi405nt2WbrxhaGdHGN9wmG5n7i0A7SErwbAiGnA==
X-Received: by 2002:ac8:2a66:: with SMTP id l35mr34457334qtl.340.1571067262099; 
 Mon, 14 Oct 2019 08:34:22 -0700 (PDT)
Received: from soleen.tm1wkky2jk1uhgkn0ivaxijq1c.bx.internal.cloudapp.net
 ([40.117.208.181])
 by smtp.gmail.com with ESMTPSA id l15sm8985494qkj.16.2019.10.14.08.34.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 08:34:21 -0700 (PDT)
Date: Mon, 14 Oct 2019 15:34:19 +0000
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH v6 08/17] arm64: hibernate: add trans_pgd public functions
Message-ID: <20191014153419.galjhum7amnyuiml@soleen.tm1wkky2jk1uhgkn0ivaxijq1c.bx.internal.cloudapp.net>
References: <20191004185234.31471-1-pasha.tatashin@soleen.com>
 <20191004185234.31471-9-pasha.tatashin@soleen.com>
 <2ea69969-154d-fa55-767d-43ea8971dd0e@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2ea69969-154d-fa55-767d-43ea8971dd0e@arm.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_083423_491028_65647A7C 
X-CRM114-Status: GOOD (  14.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: sashal@kernel.org, mark.rutland@arm.com, vladimir.murzin@arm.com,
 corbet@lwn.net, marc.zyngier@arm.com, catalin.marinas@arm.com,
 bhsharma@redhat.com, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 jmorris@namei.org, linux-mm@kvack.org, ebiederm@xmission.com,
 matthias.bgg@gmail.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

> > +
> > +	memcpy(page, src_start, length);
> > +	__flush_icache_range((unsigned long)page, (unsigned long)page + length);
> > +
> > +	trans_pgd = (void *)get_safe_page(GFP_ATOMIC);
> > +	if (!trans_pgd)
> > +		return -ENOMEM;
> > +
> > +	rc = trans_pgd_map_page(trans_pgd, page, dst_addr,
> > +				PAGE_KERNEL_EXEC);
> > +	if (rc)
> > +		return rc;
> > +
> >  	/*
> >  	 * Load our new page tables. A strict BBM approach requires that we
> >  	 * ensure that TLBs are free of any entries that may overlap with the
> 
> (I suspect you are going to to duplicate this in the kexec code. Kexec has the same
> pattern: instructions that have to be copied to do the relocation of the rest of memory)
> 

Yes, the relocation function is also copied, but I do not see an easy
way to unify this particular code with kexec. We can discuss in kexec
part of this series what else can be unified with hibernate's code.

> 
> > @@ -462,6 +476,24 @@ static int copy_page_tables(pgd_t *dst_pgdp, unsigned long start,
> 
> > +int trans_pgd_create_copy(pgd_t **dst_pgdp, unsigned long start,
> > +			  unsigned long end)
> > +{
> > +	int rc;
> > +	pgd_t *trans_pgd = (pgd_t *)get_safe_page(GFP_ATOMIC);
> > +
> > +	if (!trans_pgd) {
> > +		pr_err("Failed to allocate memory for temporary page tables.\n");
> > +		return -ENOMEM;
> > +	}
> > +
> > +	rc = copy_page_tables(trans_pgd, start, end);
> > +	if (!rc)
> > +		*dst_pgdp = trans_pgd;
> 
> *dst_pgdp was already allocated in swsusp_arch_resume().

Good catch, I forgot to remove allocation from swsusp_arch_resume().

 
> > +
> > +	return rc;
> > +}
> > +
> >  /*
> >   * Setup then Resume from the hibernate image using swsusp_arch_suspend_exit().
> >   *
> > @@ -488,7 +520,7 @@ int swsusp_arch_resume(void)
> >  		pr_err("Failed to allocate memory for temporary page tables.\n");
> >  		return -ENOMEM;
> >  	}
> 
> If the allocation moves into 'trans_pgd_create_copy()', please move the code just above
> here (cut off by the diff) that allocates it in swsusp_arch_resume().
> 
> Its actually okay to leak memory like this, hibernate's allocator acts as a memory pool.
> It either gets freed if we fail to resume, or vanishes when the resumed kernel takes over.

I did.

> 
> Reviewed-by: James Morse <james.morse@arm.com>

Thank you,
Pasha

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
