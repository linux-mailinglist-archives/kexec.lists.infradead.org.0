Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C9F193048
	for <lists+kexec@lfdr.de>; Wed, 25 Mar 2020 19:23:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=udjzPCXn/XVvilLEUDZJJytzmSM8Pm6oB1k9xa3r75s=; b=Ay/RvRka7GAy0a
	GadNOIw1DTrEBgfwhL/nt1Au2Pe/9RABF1CCiT7TVlAFfKaYp9fwIjn/onmnq7h3ZA7S239wI8qgU
	3/9wCB2mJ3m5+1rcyI8/ffjfhwXmRttoTAxw7ox5qBFqjbyAAlkHcGFXoLh2wG1Y5MijXFs06J8sB
	4cl2M4aoNHQerkmvypER92EaCOVe9M93KQOewAiLmF7m7vJJIavfrU8IHE5YLPACl42AQGhknYSuO
	8c3pwq7DnBkyBGCWva3JHJjAE5qfW8Q5Xsd5d5n54gOmdxZRFh9JJTXt2j9bdnwlQO324tgehXmIz
	CdGWSzrj2Gn/Qqj2FLbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHAgq-000325-HT; Wed, 25 Mar 2020 18:23:44 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHAgn-00031k-Ey
 for kexec@lists.infradead.org; Wed, 25 Mar 2020 18:23:42 +0000
Received: by mail-wm1-x344.google.com with SMTP id l20so3925195wmi.3
 for <kexec@lists.infradead.org>; Wed, 25 Mar 2020 11:23:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=C32w3s9xrOfvpUyGe59pEMLZJTy5zL32E35LnVR5hYc=;
 b=FgeLTpJO4Hkgg/xBcD+rSToh1De74uOGAMziQcy+E4+bS+PD6mET09MPFOxZHV/plJ
 gx5rMJ8TSlpE1+WagyKKtE8TQMDETgDNcy0Hv4AuhxwekkFR7HrW4fPxt8FpKduA2M0V
 iUagoSf+VveNlRNEyaKZyTLCq0WR0HwclUv+A8AQCqfwPwtzZ6KL0Pl8ntY7DOg3Gg1r
 PhLPh/BimzjRi2vmHnwzZwvCbIrSGp4Cs46b7HM3BWn+di666a7YKxAFgpZ1hiQSESJS
 AbR8MK4VbZBjXgBKR0Vbi4VjnnqLkB1Hfh30vxW8Q/cSjx/+fyEptWlJ1u9D1qrtpgWA
 eg1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=C32w3s9xrOfvpUyGe59pEMLZJTy5zL32E35LnVR5hYc=;
 b=oz2YxtwMui3r9X7pijFlvldO/HzZtItmguYePwxCQdmQN7M9kLhPtdtouaNVcGz/1l
 Nd7DHgoVSqS+7yVDDos9zUHF5hBDlex5Voj6/0/I+tMdu23WWXOLFFXIXip6JuTgce3N
 qIFO63aUYKoxwbjgSAcTA57Fk786A524Eip/priW53iW7zjCoYtrxm6/kybmVNmeXjb/
 g4Tvu/KE8v7jlBXzoW66G2YaCninn3JMvhBTj+MIpMi9WfOwfP5Q37EUCOZnZRW/jfBn
 spfId6tYzKdpZyjCgqhg7g6pFO4LS9Ym6Rr5QbqUrLts7fvjeuwQ9YdzXMlBQIg1RZBj
 DNSg==
X-Gm-Message-State: ANhLgQ2R9s0UhZk/ziGZxi3kur9wo5JbTFPjz5PTcQgvsqfzcbNkPsZp
 9JU5zdKzNLkzK2Dndx+pzkTHzLsNaA==
X-Google-Smtp-Source: ADFU+vsyiCNldnGZBS245ltWuorhNkb+GBDqN+91mRMhKnL924K5FAfhJhhUpMKtKLWUYXbmqq0qAA==
X-Received: by 2002:a05:600c:257:: with SMTP id
 23mr4853440wmj.155.1585160619868; 
 Wed, 25 Mar 2020 11:23:39 -0700 (PDT)
Received: from avx2 ([46.53.251.45])
 by smtp.gmail.com with ESMTPSA id m3sm4298649wmm.3.2020.03.25.11.23.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 11:23:39 -0700 (PDT)
Date: Wed, 25 Mar 2020 21:23:36 +0300
From: Alexey Dobriyan <adobriyan@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [RFC PATCH v2 1/3] meminfo_extra: introduce meminfo extra
Message-ID: <20200325182336.GC18706@avx2>
References: <20200323080503.6224-1-jaewon31.kim@samsung.com>
 <CGME20200323080508epcas1p387c9c19b480da53be40fe5d51e76a477@epcas1p3.samsung.com>
 <20200323080503.6224-2-jaewon31.kim@samsung.com>
 <20200323095344.GB425358@kroah.com> <5E79CEB5.8070308@samsung.com>
 <20200324101110.GA2218981@kroah.com> <5E79F102.9080405@samsung.com>
 <20200324114645.GA2330984@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200324114645.GA2330984@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_112341_527508_4DFEEF5D 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [adobriyan[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Jaewon Kim <jaewon31.kim@samsung.com>, sergey.senozhatsky.work@gmail.com,
 leon@kernel.org, linux-mm@kvack.org, linux-api@vger.kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, minchan@kernel.org,
 bhe@redhat.com, ngupta@vflare.org, jaewon31.kim@gmail.com,
 akpm@linux-foundation.org, labbott@redhat.com, sumit.semwal@linaro.org,
 vbabka@suse.cz, kasong@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Tue, Mar 24, 2020 at 12:46:45PM +0100, Greg KH wrote:
> On Tue, Mar 24, 2020 at 08:37:38PM +0900, Jaewon Kim wrote:
 
> > I don't know other cases in other platform.
> > Not desperately needed but I think we need one userspace knob to see overall hidden huge memory.
> 
> Why?  Who wants that?  What would userspace do with that?  And what
> exactly do you want to show?
> 
> Is this just a debugging thing?  Then use debugfs for that, not proc.

Yes, please use debugfs. Android can ban it in production all at once.

> Isn't that what the DRM developers are starting to do?
> 
> > Additionally I'd like to see all those hidden memory in OutOfMemory log.
> 
> How is anything hidden, can't you see it in the slab information?

There real usecase for something like that is vmware baloon driver.
Two VM instances oversteal pages one from another resulting in guest OOM
which looks like one giant get_free_page() memory leak from inside VM.

I don't know how often this type of issue happens nowadays but countless
OOM support tickets were filed and closed over this nonsense.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
