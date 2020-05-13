Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B558E1D124E
	for <lists+kexec@lfdr.de>; Wed, 13 May 2020 14:07:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m7g1+3OVBxaK2uiQKjjUjIZBMAgRu0VWeWjAoZBCvn4=; b=lZ4m/XUp5ZXYJA
	3uar6k8uc+VrRbgZZL7UW/2pUBh/DYbNQUWy407UddLdQX4/ngHAiEl04nJmF5iHYmr2Vdk9JEPIB
	D6bV+TVKJcOAbKvg/rdWML5nGtaoX0ELiWjmHetBQZMOL0vyUVh+mBP7joTYWz8oWxRj0KrMPPsyU
	2YvIDbTIZMsRIHK/xESPk+YVY0VVDPZqQ2GulNdQkvpXbj3LDXYmzU29h2SEht78Kvg/zmtEhGUZU
	tqQRvCwF4UCAV1CqXy21kHdJYUKxkuB3t/WnWiTboO1o9O02h/hIDPgsrsS67VRlOXVQ6GvI+PUX2
	AuUtUQAYft36FR/nGymg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYqAJ-0002JP-70; Wed, 13 May 2020 12:07:11 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYqAC-0002FA-Gw
 for kexec@lists.infradead.org; Wed, 13 May 2020 12:07:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589371621;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rTvNfxEcdBjM7+rUnpuyw83WRb+cCXiZfeWKdT61OtU=;
 b=GZEHLWA1oqSJnQIO09VxCH1XSs3UFsS/Mblj97VjRDB5uRIXGddBuX15ooXJxW3GiClhf/
 jVWRtFjeof8rE9pJe8bO8fWESVaY7c3UUiVSKAjFqXwHkLauTKCqYnx9/uznZm08L6cC67
 ljdw1t+ETETYBQ2v7MIxs+skRd/OOBE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-249-PV_CE75mORq-Nt6Zud0-dw-1; Wed, 13 May 2020 08:05:03 -0400
X-MC-Unique: PV_CE75mORq-Nt6Zud0-dw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8666B1009447;
 Wed, 13 May 2020 12:05:01 +0000 (UTC)
Received: from prarit.bos.redhat.com (prarit-guest.7a2m.lab.eng.bos.redhat.com
 [10.16.222.26])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 80CEC619C3;
 Wed, 13 May 2020 12:05:00 +0000 (UTC)
Subject: Re: [PATCH v2 0/3] printk: replace ringbuffer
To: John Ogness <john.ogness@linutronix.de>, Petr Mladek <pmladek@suse.com>
References: <20200501094010.17694-1-john.ogness@linutronix.de>
From: Prarit Bhargava <prarit@redhat.com>
Message-ID: <8981615b-314a-1e55-1635-d17e3cbc544e@redhat.com>
Date: Wed, 13 May 2020 08:05:00 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200501094010.17694-1-john.ogness@linutronix.de>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_050704_756670_1BC64FB4 
X-CRM114-Status: GOOD (  16.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.120 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrea Parri <parri.andrea@gmail.com>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org



On 5/1/20 5:40 AM, John Ogness wrote:
> Hello,
> 
> Here is a v2 for the first series to rework the printk subsystem. The
> v1 and history are here [0]. This first series only replaces the
> existing ringbuffer implementation. No locking is removed. No
> semantics/behavior of printk are changed.
> 
> The VMCOREINFO is updated. RFC patches for the external tools
> crash(8) [1] and makedumpfile(8) [2] have been submitted that allow
> the new ringbuffer to be correctly read.
> 
> This series is in line with the agreements [3] made at the meeting
> during LPC2019 in Lisbon, with 1 exception: support for dictionaries
> will not be discontinued [4]. Dictionaries are stored in a separate
> buffer so that they cannot interfere with the human-readable buffer.
> 

Hey John,

I tested this on two 128-cpu ppc64le power8 boxes, and a 64 core x86_64 box
using your prb-test testsuite with the latest upstream kernel.  The tests ran
successfully for ~16 hours without any problems.

P.


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
