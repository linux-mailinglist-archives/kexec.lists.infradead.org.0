Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C111A3472
	for <lists+kexec@lfdr.de>; Thu,  9 Apr 2020 14:57:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Idhxzxexft1w8SIdkWTxIhETh0+75hOm1J3wtm1YG0c=; b=GceIprsrrMXeQE
	H3101fY3OpWSduPckSJ7D1F9wfJyJFvZYgqI4TY0lbkpXNOwLosnYdI0Z+EyoecWCjixvMNZNxWLk
	PaL87IJd70k6lRRQ8+cko0dXpRey3BRWhtPGi+d/fKYOUbP8+mMCqrFsvH5UwjpGLV0ylf+sNytOd
	6gZ+iTTTxgQb1mEwpG0hEigzqMRXsr6MnupV0hJlwiXNk3EgkMLUjkSkAYNJhV6lWjB0h1GAAA7BR
	JyUQ811xsH0CaLOUn+8ChbsvOf0wucu8RtRe6B47NtSWRgAlYfR52Wslhs8JGeNjzEH69cpuqF3+g
	bw+/iyIOPEMBN7pW2hPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMWkS-0005mX-OI; Thu, 09 Apr 2020 12:57:36 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMWkP-0005lb-0k
 for kexec@lists.infradead.org; Thu, 09 Apr 2020 12:57:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586437051;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=O2CLuS3FEdpoO51mMdiV5dcccG5OKJkGsbzDxdCTFJc=;
 b=S/Xi80WEpWmwWIAtuePSpP00yDxQZDtiEd8wZPUgE0yEn1Y8n/KwxygjtrE37gaP8yRi7Y
 pscJqULCxQmsjIsfx9/5XjPtLwXxmqDMZ8VnvbLa9NxcDl8igjoG8x3toS4SV7+aeULF6D
 FKOAvPPDl5cOtGCN48GMiV+xseW3Ejo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-451-aCVDYKQlOD2fSBBkaINFYA-1; Thu, 09 Apr 2020 08:57:29 -0400
X-MC-Unique: aCVDYKQlOD2fSBBkaINFYA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 09FF0801E5E;
 Thu,  9 Apr 2020 12:57:28 +0000 (UTC)
Received: from localhost (ovpn-12-133.pek2.redhat.com [10.72.12.133])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E19905C64E;
 Thu,  9 Apr 2020 12:57:21 +0000 (UTC)
Date: Thu, 9 Apr 2020 20:57:19 +0800
From: Baoquan He <bhe@redhat.com>
To: Vitaly Kuznetsov <vkuznets@redhat.com>
Subject: Re: [PATCH v2 0/3] KVM: VMX: Fix for kexec VMCLEAR and VMXON cleanup
Message-ID: <20200409125719.GV2402@MiWiFi-R3L-srv>
References: <20200321193751.24985-1-sean.j.christopherson@intel.com>
 <20200407110115.GA14381@MiWiFi-R3L-srv>
 <87r1wzlcwn.fsf@vitty.brq.redhat.com>
 <20200408151808.GS2402@MiWiFi-R3L-srv>
 <87mu7l2256.fsf@vitty.brq.redhat.com>
 <20200409012002.GT2402@MiWiFi-R3L-srv>
 <87imi829o9.fsf@vitty.brq.redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87imi829o9.fsf@vitty.brq.redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_055733_287252_5E1C52CF 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: dzickus@redhat.com, Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 Joerg Roedel <joro@8bytes.org>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 Paolo Bonzini <pbonzini@redhat.com>, dyoung@redhat.com,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 04/09/20 at 01:14pm, Vitaly Kuznetsov wrote:
> Baoquan He <bhe@redhat.com> writes:
> 
> >
> > While I would suggest adding kexec@lists.infradead.org when code changes
> > are related to kexec/kdump since we usually watch this mailing list.
> > LKML contains too many mails, we may miss this kind of change, have to
> > debug and test again.
> >
> 
> Definitely makes sense and I'll try my best to remember doing this
> myself next time but the problem is that scripts/checkpatch.pl is not
> smart enough, kexec related bits are scattered all over kernel and
> drivers so I'm afraid you're missing a lot in kexec@ :-(

Yeah, understand, thanks.


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
