Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D497DD6597
	for <lists+kexec@lfdr.de>; Mon, 14 Oct 2019 16:51:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G7DiezRJ5tlaDN9YIqxqAX2NYzgxJ/5jvRKnCweP/Tg=; b=YRBuwP+uWo2sHO
	DHPIbgiuOaW/v/vINd8jjSQv/R4UaXM3G7428UXKKpIgZzt7lQIglkQejSTkAuR2iFqEJI7XjlCLS
	+jd/x4XcunEph5tUpa5MwKx9ITKreNU8cCTt+vGqIk9Xi4/z16DDpp58+TpQiRuMbBSUTDbTi23wx
	KZdfo2sgUbSLAcYMfX9EO0mlfytpMo8OZ5G1Ajlv5zWqAXc4P/M85yG0qTvR1HU227j6YucYC2HZ7
	shqI+6drvt2B+AZF/HiBYKl1wqprtTvJA5BbjrzsWaMMjw3Q7n3T4DXJHwQQEFKqgMvOBmfSX8J0/
	pusckznEJpfdZIWzwo6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK1h8-0001bG-5R; Mon, 14 Oct 2019 14:51:34 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK1h4-0001aD-EL
 for kexec@lists.infradead.org; Mon, 14 Oct 2019 14:51:31 +0000
Received: by mail-qt1-x844.google.com with SMTP id 3so25862240qta.1
 for <kexec@lists.infradead.org>; Mon, 14 Oct 2019 07:51:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=k8cAZuPl6XV2WDQXDBabAxPwA0HPU6DlRuaDvX64hUE=;
 b=iSVi5SyyXkhPFLimDA9bP2kUxsggWZd6tYNgic0OT+oV1mg8uNvVVig1qIPxE3J7w2
 J3FhOxzTZpudzWnNgrkuDsEVcgwWQFOIUq/6RoTHaeroh6d9xjo8rXLYcSzqb2eOP/J8
 6Sild2t4N9JgE0F0OHSRZxMi2ICTFNF96+lOHtDqhTGWTyedkYvJWnUPSlwUye+Zzxwh
 /01FiE2vizs9yjyLrjyqolAxquIXoBpHprHQhIAU2Y71F9QUPPYh8eYUgAUAfgJq7Va6
 skAFdm487H7g1SQm8aGsqi+mY+2IPqEMw9elAgHl9o1YwagV78PqJVOkeFjTRYalLHwh
 /toQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=k8cAZuPl6XV2WDQXDBabAxPwA0HPU6DlRuaDvX64hUE=;
 b=C0ua3ppCr1+/O07JSMCB1XehyAlPp3q/fsHShYqky/+YS3GjuGNoVwwVeYeO45/pSW
 relIvfFUAG31G+K8sQtu3S7HKp1qf8voNSQFCCPDnxFlVrLlPTQ8aCR29ItwkcewkzRq
 +DnlPcP9hjp9vL5V2+rFyT1QMu9/Vvt4chGWNKtxvLsxj/i/P4N7j2hmxXHftu1o7CEQ
 +QYRIVmy72A2Xnsrd919RbAY4Laphex+CymZKR7LBh1pHEzPBzEEdNwb3TR/UIfUj/hv
 eL7RPdEVpPbv1P5XUd4GRFaIWlkwrvil2HIgn00lU5COjHdK78imNI+74KxDiZ5esk7a
 WcCQ==
X-Gm-Message-State: APjAAAXafd2cadCnxeJWXPpB69dRVkoECt1n+T/ZDzmtuLuOOBsZvVHU
 4UoJzOC2JEdiGAE4mPs6Z8YrQw==
X-Google-Smtp-Source: APXvYqwE3oTkh5m6IRNf9shvJzMEDIrzoKOeL0YvN1NLoZs9oq4KbIQH4AFxlqEvf59XpXbCInkklw==
X-Received: by 2002:ac8:7152:: with SMTP id h18mr33667358qtp.377.1571064687562; 
 Mon, 14 Oct 2019 07:51:27 -0700 (PDT)
Received: from soleen.tm1wkky2jk1uhgkn0ivaxijq1c.bx.internal.cloudapp.net
 ([40.117.208.181])
 by smtp.gmail.com with ESMTPSA id g19sm11529214qtb.2.2019.10.14.07.51.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 07:51:26 -0700 (PDT)
Date: Mon, 14 Oct 2019 14:51:25 +0000
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH v6 03/17] arm64: hibernate: check pgd table allocation
Message-ID: <20191014145125.ahemooviyznqgpdh@soleen.tm1wkky2jk1uhgkn0ivaxijq1c.bx.internal.cloudapp.net>
References: <20191004185234.31471-1-pasha.tatashin@soleen.com>
 <20191004185234.31471-4-pasha.tatashin@soleen.com>
 <b5f965b5-bbd6-9e53-c085-d1a0c0dceca7@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b5f965b5-bbd6-9e53-c085-d1a0c0dceca7@arm.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_075130_485785_D7F4C7BA 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
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

> Thanks for splitting [0] into two ... but this fix depends on the previous patch - which
> isn't an issue that anyone can hit, and doesn't match Greg's 'stable-kernel-rules'.
> 
> Please separate out this patch - and post it on its own as a stand-alone fix that can be
> sent to the stable trees.
> 
> 
> Mixing fixes with other patches leads to problems like this. It isn't possible to pick
> this fix independently of the cleanup in the previous patch.

Thank you, I sent it out as a separate fix.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
