Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6CEF1A618D
	for <lists+kexec@lfdr.de>; Mon, 13 Apr 2020 04:37:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1s36TywY34uFwN1U1rbOfj3dVHbMCmVm/CuXSLXt0j8=; b=AiqFkbih1mxbyX
	oG9CtLl/4XC/xGtaamR99ETWTpt8QpP3eybNqnWC7WyjCKypWcymVcwy/XyGBVIDlml0yknbO7COj
	ZZHuOjbwhq2LgmngZ5GxT4AaXAUIla8n7X+V3dZb2/G0wvsxrjHBYwwFkrLcMvWqyhMTn0hU9GpBU
	E4+OmUXBGCDKS3OXs6SS6S1KJJuqLi8YjEkIeHeDXfRydHEwIFbxCaifzzoBs90fnCp4skokNWNO2
	8idvDXD4AQs1xmjM0RECBEpt+FaD77+Zex33Z/frjOMiHTtnv6mD4Z7uhDhTU5t6QqjKitpWeO8XH
	5dEAqze3XgykrGo34NGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNoyV-0003bC-Fk; Mon, 13 Apr 2020 02:37:27 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNoyO-0003Wj-77
 for kexec@lists.infradead.org; Mon, 13 Apr 2020 02:37:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586745437;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=cNWdc1cSaVS1ulqLAzfjy25i8fkF6PupRqxs9vt81WU=;
 b=EaGh1Bm2dnSEOXuB1lhHZO72xZvzPqCYWVlBH+gW2gfP+eff9xNngqPxpMMMzn0YCTmKRO
 j1zdZvereGryokEzIZY+jwa2VPtY+efzp+5ICvplk0Z5q0lTs0gRyw+HdQxjaty2Ytgb5p
 Zntx286Ehi4zpuTl85ycp9miIQLgD04=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-279-AC8HmX-qO2OON4JV2G2ccA-1; Sun, 12 Apr 2020 22:37:09 -0400
X-MC-Unique: AC8HmX-qO2OON4JV2G2ccA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0887D18B5FA1;
 Mon, 13 Apr 2020 02:37:08 +0000 (UTC)
Received: from localhost (ovpn-12-79.pek2.redhat.com [10.72.12.79])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id EF2B911D2C4;
 Mon, 13 Apr 2020 02:37:03 +0000 (UTC)
Date: Mon, 13 Apr 2020 10:37:01 +0800
From: Baoquan He <bhe@redhat.com>
To: "Eric W. Biederman" <ebiederm@xmission.com>
Subject: Re: [PATCH 1/3] kexec: Prevent removal of memory in use by a loaded
 kexec image
Message-ID: <20200413023701.GA20265@MiWiFi-R3L-srv>
References: <34274b02-60ba-eb78-eacd-6dc1146ed3cd@arm.com>
 <80e4d1d7-f493-3f66-f700-86f18002d692@redhat.com>
 <dfacf85f-d79d-8742-7a13-1ac0a67bad04@arm.com>
 <ba481c82-c69e-043c-4b66-2d2c7732cf07@redhat.com>
 <20200410121013.03b609fd572504c03a666f4a@linux-foundation.org>
 <20200411034414.GH2129@MiWiFi-R3L-srv>
 <20200411093009.GH25745@shell.armlinux.org.uk>
 <20200412053507.GA4247@MiWiFi-R3L-srv>
 <20200412080836.GM25745@shell.armlinux.org.uk>
 <87wo6klbw0.fsf@x220.int.ebiederm.org>
MIME-Version: 1.0
In-Reply-To: <87wo6klbw0.fsf@x220.int.ebiederm.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_193720_335904_3EA9AFD4 
X-CRM114-Status: GOOD (  21.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: David Hildenbrand <david@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>, kexec@lists.infradead.org,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>, linux-mm@kvack.org,
 James Morse <james.morse@arm.com>, Andrew Morton <akpm@linux-foundation.org>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 04/12/20 at 02:52pm, Eric W. Biederman wrote:
> 
> The only benefit of kexec_file_load is that it is simple enough from a
> kernel perspective that signatures can be checked.

We don't have this restriction any more with below commit:

commit 99d5cadfde2b ("kexec_file: split KEXEC_VERIFY_SIG into KEXEC_SIG
and KEXEC_SIG_FORCE")

With KEXEC_SIG_FORCE not set, we can use kexec_load_file to cover both
secure boot or legacy system for kexec/kdump. Being simple enough is
enough to astract and convince us to use it instead. And kexec_file_load
has been in use for several years on systems with secure boot, since
added in 2014, on x86_64.

> 
> kexec_load in every other respect is the more capable and functional
> interface.  It makes no sense to get rid of it.
> 
> It does make sense to reload with a loaded kernel on memory hotplug.
> That is simple and easy.  If we are going to handle something in the
> kernel it should simple an automated unloading of the kernel on memory
> hotplug.
> 
> 
> I think it would be irresponsible to deprecate kexec_load on any
> platform.
> 
> I also suspect that kexec_file_load could be taught to copy the dtb
> on arm32 if someone wants to deal with signatures.
> 
> We definitely can not even think of deprecating kexec_load until
> architecture that supports it also supports kexec_file_load and everyone
> is happy with that interface.  That is Linus's no regression rule.

I should pick a milder word to express our tendency and tell our plan
then 'obsolete'. Even though I added 'gradually', seems it doesn't help
much. I didn't mean to say 'deprecate' at all when replied.

The situation and trend I understand about kexec_load and kexec_file_load
are:

1) Supporting kexec_file_load is suggested to add in ARCHes which don't
have yet, just as x86_64, arm64 and s390 have done;
 
2) kexec_file_load is suggested to use, and take precedence over
kexec_load in the future, if both are supported in one ARCH.

3) Kexec_load is kept being used by ARCHes w/o kexc_file_load support,
and by ARCHes for back compatibility w/ kexec_file_load support.

For 1) and 2), I think the reason is obvious as Eric said,
kexec_file_load is simple enough. And currently, whenever we got a bug
report, we may need fix them twice, for kexec_load and kexec_file_load.
If kexec_file_load is made by default, e.g on x86_64, we will change it
in kernel space only, for kexec_file_load. This is what I meant about
'obsolete gradually'. I think for arm64, s390, they will do these too.
Unless there's some critical/blocker bug in kexec_load, to corrupt the
old kexec_load interface in old product.

For 3), people can still use kexec_load and develop/fix for it, if no
kexec_file_load supported. But 32-bit arm should be a different one,
more like i386, we will leave it as is, and fix anything which could
break it. But people really expects to improve or add feature to it? E.g
in this patchset, the mem hotplug issue James raised, I assume James is
focusing on arm64, x86_64, but not 32-bit arm. As DavidH commented in
another reply, people even don't agree to continue supporting memory
hotplug on 32-bit system. We ever took effort to fix a memory hotplug
bug on i386 with a patch, but people would rather set it as BROKEN.


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
