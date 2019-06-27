Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01EE558590
	for <lists+kexec@lfdr.de>; Thu, 27 Jun 2019 17:28:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EyOfvjPOEmD7eN479Rjz6wezeuAIaSnB/IMkn+clUPo=; b=eRR7cNH/2hvOax
	qlibkJgRqPII68ZpS3PytHLwiDXUYfY7yK6QSxIEz/a6sIgBcplZ+UpFzAQTIg8tsieYhOUv3r054
	XLjKyibPvTdQcbLeJZsqlYtpY3gQWLPX562I2/EbqU7UoyrNHIaAjuhm+IsWmHaihohI6MQLx+QJG
	Datxa/ypApFSCIUtGW4TYyai5IoL3Fhppjcer9J91D3OsCw54WKSUIpWEaL2G6NvHehSoaa63YRu1
	9cAfeUSnKXA710Kp1H2Ci+f/pKbImumvb6/zeue8GDvAiUwp9nI7JUN0B2NWfASq8CZoLblterOST
	fqyYNkK2Sqn8+a/d9qbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgWK4-0004Kx-JV; Thu, 27 Jun 2019 15:28:28 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgWK0-0004JT-64
 for kexec@lists.infradead.org; Thu, 27 Jun 2019 15:28:25 +0000
Received: by mail-io1-xd42.google.com with SMTP id i10so5569161iol.13
 for <kexec@lists.infradead.org>; Thu, 27 Jun 2019 08:28:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=g3RhI9DNvqsR2Iknx3LGGvk1u88PumHwEAJh9YfsKq4=;
 b=gekKU/tGlO7Mg0UGCOLXXY+Ire65Q4Z2qg5wd1h/tWU9dzP0OjY9RAukwLeQIBSiqO
 lOzOnp3OUJGMVLjCBBaxpYTOR7n0lu7pDCECDHHB+ew+MrRhPUsJ0/NzKMwdsdcqH0Ov
 7lUBWw8BNh134qpS92lj0nucRNsTHYxeobnt31H/hqDGy9ghty4FICuN8yjUcc9NWF/6
 905EiAC6mqg4SnIM0fMAjsXUMLsqln3Od29lkC8l+/yuWFoRGhklNh7wu6HdgobanftQ
 uCGE/qdCkvuTW0BOqRXIuGm5aMHPy5aZt2n/GNm5dIfAcnbAFzKIOR34tkMtJDQm0I8O
 xIiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=g3RhI9DNvqsR2Iknx3LGGvk1u88PumHwEAJh9YfsKq4=;
 b=dUVQbu9+2b3HMEGV/FCyt+8pNKkLXWOkXPZpy5LqK+PWOdElM9/lqkQ13wYFL+E8+J
 HLBMQb+W5Ay9gr2aQt+vIHqnQZBwsqtsL2LAssWvMuVTFbgMCuLyovo8ruqJLkk3Fv+4
 mHsnxTTTZz6YYmFEeO5cudITHbRoZf2Sf8DvibCSvzHJ5ff67eaOz9HND9aXrM0IMPy0
 gLNgJx3ZmCA3iyD/oEaXG87afa2BWwgcq/r/e59UAKH3HJzpd9cp1w46X0VOqKUoEXDp
 HMsq6PKLVtkmKTKh65lMISrNKGHtKVHmih+WTk/Q9PMdLtopSsmZJoEtsc9H9mWlpJ9Q
 qu1w==
X-Gm-Message-State: APjAAAUUpNBqT71/Jg93BOR+FNlTGi/qwF/IUJhkkYwjq/vWMIkHiHOc
 YwHouUxyfg+z4DQTuPdM1q7tFLLS6jNIVRdCI3AYRw==
X-Google-Smtp-Source: APXvYqxt+k0Ai9dyDn8LZuqnNMawxVvBOa3fPtlRblTKZbcATMFln2wqMn2SYedj7jJBGVi/ao2H/uL/Z68ruv8rRdU=
X-Received: by 2002:a5d:9d97:: with SMTP id 23mr5395263ion.204.1561649300148; 
 Thu, 27 Jun 2019 08:28:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190622000358.19895-1-matthewgarrett@google.com>
 <20190622000358.19895-10-matthewgarrett@google.com>
 <alpine.LRH.2.21.1906271423070.16512@namei.org>
In-Reply-To: <alpine.LRH.2.21.1906271423070.16512@namei.org>
From: Matthew Garrett <mjg59@google.com>
Date: Thu, 27 Jun 2019 08:28:08 -0700
Message-ID: <CACdnJusJeCYPKVFHiu6yn+mfqQe5k0RqZhbCUZEkxtXx_shMmw@mail.gmail.com>
Subject: Re: [PATCH V34 09/29] kexec_file: Restrict at runtime if the kernel
 is locked down
To: James Morris <jmorris@namei.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_082824_231993_EF456A22 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: -15.2 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Jiri Bohac <jbohac@suse.cz>, Linux API <linux-api@vger.kernel.org>,
 kexec@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Howells <dhowells@redhat.com>,
 LSM List <linux-security-module@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 9:59 PM James Morris <jmorris@namei.org> wrote:
> This is not a criticism of the patch but a related issue which I haven't
> seen discussed (apologies if it has).
>
> If signed code is loaded into ring 0, verified by the kernel, then
> executed, you still lose your secure/trusted/verified boot state. If the
> currently running kernel has been runtime-compromised, any signature
> verification performed by the kernel cannot be trusted.
>
> This problem is out of scope for the lockdown threat model (which
> naturally cannot include a compromised kernel), but folk should be aware
> that signature-verified kexec does not provide equivalent assurance to a
> full reboot on a secure-boot system.

By that metric, on a secure boot system how do we determine that code
running in the firmware environment wasn't compromised before it
launched the initial signed kernel?

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
