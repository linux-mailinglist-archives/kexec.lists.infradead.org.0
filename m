Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C6321B5E2C
	for <lists+kexec@lfdr.de>; Thu, 23 Apr 2020 16:45:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ApcXkwfuVd9HxAZmt/tsq4MSTzZn/+k4tjQXFUaBwrM=; b=GiIO6Rbrn+wnW1
	29gX9D46CbLRLvxRpwllGZgiXgbSYsCyzXDfqE53cR4EQ492wngJHiumaqdGrjcI0duC34NVZOzK4
	qUSogd9pzHBU/SppIZgr4YW26Q+9PHQqM7B48DRLejSJf3btOVo/uLYY3uY1IznPwo7Tp3ypKWiyI
	gw0lqbAt8fmxH2UHRhxxKyKtj27baJCQTaVwNQjIXzCp3ZRHDk/j3ylkc4H7hz27MORVP3VWFvKl1
	yxCyny6hNi5yk7EoCJna8ufDbQptqR4qUYRSJ1zheXLsmH69f9GiZJvn++t3wu0Z+l8spg/ghoIJu
	6oU6xidETN36IPhwDnjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRd6i-0004a0-UT; Thu, 23 Apr 2020 14:45:40 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRd6g-0004Ym-AO
 for kexec@bombadil.infradead.org; Thu, 23 Apr 2020 14:45:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Subject:References:In-Reply-To:Message-ID:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=XB/KJhFbtFpd24T3goP/UJf7Bb0BGkWkVGww36jTL00=; b=H9WQR5u2/LCShdVlYkDERZI5cv
 7yKH9vl71lrHpMG5hAEqn5N+BgXFCBrnKo5xuGRWaKjHgORsQzfN0PpiNs1n+W+7x/51MKVcYhaL3
 cQqY/oPv8abJlB1HteQVoHFT69L1wLENCqiuOC9HLSN1KCZ5IISrgmJP2RNfy7ySrjUbZEyeXpSP/
 Y4NLVNO7vB1lTxAay25Usi/x8GFjloIyNUhT2kVPHb2kk32aafk7K0kKw4PDxf9Iroext0pG4cRqc
 dsbRLyJMrs9suLZvzPEwUNWfoMmXwXyUHZY8zGP1CiGx7V/ht6WFCu8fHpolDdzgVDCzEFFaQln2b
 YrVxlIDw==;
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRd6e-0001C6-5A
 for kexec@lists.infradead.org; Thu, 23 Apr 2020 14:45:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1587652984;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=XB/KJhFbtFpd24T3goP/UJf7Bb0BGkWkVGww36jTL00=;
 b=RbPvf/NLm8/8Tgjwk8Pw6V0nnMo8mR8vCVT3gyyrYAvVjv1UyWJjjzYfykXb2A3bk2kcoz
 1LaZpFYpyFYgfSHkQmubTIahRG1Cqzhzvymhv4Dz7j8fXiJofrXfvTI9k/XkIqsNdlpYgj
 RK48qZmJ7pjIlR71NrDWs/4TY5kPKy8=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1587653003;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=XB/KJhFbtFpd24T3goP/UJf7Bb0BGkWkVGww36jTL00=;
 b=PyPfdocuS+bpFtQ8re8kBY+8+i2P/cEPfJi8f3m8rsYobiOs/Nd61YfMNSpZqt7yLHW6Ol
 mgEPmMV7zEbKGlragcrjb+S2P61wY1t+u7FUn9ypRZg0TJPGDsSm29za6H3p4OiUs5h8+K
 jJE1dhqsjfvCUbtiXMDOxjPVHO7OAgI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-373-wKH2UnsiMJWq5byehBS8Vg-1; Thu, 23 Apr 2020 10:43:02 -0400
X-MC-Unique: wKH2UnsiMJWq5byehBS8Vg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 163ED18FF662;
 Thu, 23 Apr 2020 14:43:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0CCD26084D;
 Thu, 23 Apr 2020 14:43:01 +0000 (UTC)
Received: from zmail24.collab.prod.int.phx2.redhat.com
 (zmail24.collab.prod.int.phx2.redhat.com [10.5.83.30])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id F30F71809541;
 Thu, 23 Apr 2020 14:43:00 +0000 (UTC)
Date: Thu, 23 Apr 2020 10:43:00 -0400 (EDT)
From: Dave Anderson <anderson@redhat.com>
To: HAGIO =?utf-8?B?S0FaVUhJVE8o6JCp5bC+44CA5LiA5LuBKQ==?= <k-hagio-ab@nec.com>
Message-ID: <421536467.24687472.1587652980905.JavaMail.zimbra@redhat.com>
In-Reply-To: <OSBPR01MB19916965DAEB1238FEB962F6DDD30@OSBPR01MB1991.jpnprd01.prod.outlook.com>
References: <OSBPR01MB19916965DAEB1238FEB962F6DDD30@OSBPR01MB1991.jpnprd01.prod.outlook.com>
Subject: Re: [Crash-utility] new printk ringbuffer interface
MIME-Version: 1.0
X-Originating-IP: [10.3.113.202, 10.4.195.19]
Thread-Topic: [Crash-utility] new printk ringbuffer interface
Thread-Index: AdYZequwvAGFPWjgQQyF0VtkXo6MXUxNWuXE
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
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
Cc: kexec@lists.infradead.org, "Discussion list for crash utility usage,
 maintenance and development" <crash-utility@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org



----- Original Message -----
> ccing kexec list, vmcore-dmesg also uses vmcoreinfo related to printk..
> 
> > -----Original Message-----
> > 
> > ----- Original Message -----
> > > Hello Dave,
> > >
> > > You may or may not be aware that we are working on replacing [0] the
> > > Linux printk ringbuffer. Rather than a single buffer containing a single
> > > struct type, the new ringbuffer makes use of several different structs.
> > 
> > Yes, I am most definitely aware...
> > 
> > >
> > > I am writing to ask your advice about how this should be exported for
> > > the crash utility. Should all struct sizes and field offsets be
> > > exported? It would look something like this:
> > >
> > >         VMCOREINFO_SYMBOL(prb);
> > >
> > >         VMCOREINFO_STRUCT_SIZE(printk_ringbuffer);
> > >         VMCOREINFO_OFFSET(printk_ringbuffer, desc_ring);
> > >         VMCOREINFO_OFFSET(printk_ringbuffer, text_data_ring);
> > >         VMCOREINFO_OFFSET(printk_ringbuffer, dict_data_ring);
> > >         VMCOREINFO_OFFSET(printk_ringbuffer, fail);
> > >
> > >         VMCOREINFO_STRUCT_SIZE(prb_desc_ring);
> > >         VMCOREINFO_OFFSET(prb_desc_ring, count_bits);
> > >         VMCOREINFO_OFFSET(prb_desc_ring, descs);
> > >         VMCOREINFO_OFFSET(prb_desc_ring, head_id);
> > >         VMCOREINFO_OFFSET(prb_desc_ring, tail_id);
> > >
> > >         VMCOREINFO_STRUCT_SIZE(prb_desc);
> > >         VMCOREINFO_OFFSET(prb_desc, info);
> > >         VMCOREINFO_OFFSET(prb_desc, state_var);
> > >         VMCOREINFO_OFFSET(prb_desc, text_blk_lpos);
> > >         VMCOREINFO_OFFSET(prb_desc, dict_blk_lpos);
> > >
> > >         VMCOREINFO_STRUCT_SIZE(prb_data_blk_lpos);
> > >         VMCOREINFO_OFFSET(prb_data_blk_lpos, begin);
> > >         VMCOREINFO_OFFSET(prb_data_blk_lpos, next);
> > >
> > >         VMCOREINFO_STRUCT_SIZE(printk_info);
> > >         VMCOREINFO_OFFSET(printk_info, seq);
> > >         VMCOREINFO_OFFSET(printk_info, ts_nsec);
> > >         VMCOREINFO_OFFSET(printk_info, text_len);
> > >         VMCOREINFO_OFFSET(printk_info, dict_len);
> > >         VMCOREINFO_OFFSET(printk_info, caller_id);
> > >
> > >         VMCOREINFO_STRUCT_SIZE(prb_data_ring);
> > >         VMCOREINFO_OFFSET(prb_data_ring, size_bits);
> > >         VMCOREINFO_OFFSET(prb_data_ring, data);
> > >         VMCOREINFO_OFFSET(prb_data_ring, head_id);
> > >         VMCOREINFO_OFFSET(prb_data_ring, tail_id);
> > >
> > > Or would it be enough to just recognize the new "prb" symbol and have
> > > all the structures defined in the crash utility? If the latter is
> > > preferred, should some sort of version number be exported? Or is the
> > > kernel version number enough?
> 
> first I don't think we can depend on the kernel version because distribution
> kernels backport upstream patches.  So we will need a version number of the
> ringbuffer if we choose that way.

With respect to the kernel version, you are absolutely correct, as we've been
burnt by that before with backports to distribution and the upstream longterm
kernels.  But I think John was talking about exporting a printk-structure-set
version number, so I think we're on the same page.

Also, if we go the version-number route, there would still not be a requirement
for the crash utility to duplicate the kernel data structures in its sources.
As John's proof-of-concept patch showed, it can still use the traditional
manner of getting structure sizes and member offsets.  With the version number
exported, there may have to be a few small adjustments in the MEMBER_OFFSET_INIT()
calls, but it would be fairly straight-forward to maintain.

But of course makedumpfile would have to replicate the kernel data structures.

Thanks,
  Dave


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
