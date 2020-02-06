Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B3991540F3
	for <lists+kexec@lfdr.de>; Thu,  6 Feb 2020 10:12:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TCVraNn2lRqH2YSKitmJtLW7rHEtk6U7akLA3bKu/VY=; b=osFeg9bQoohaLn
	V/8sSnopfSb2u5xKpoIKJ3HRoUKRqoGh9hTrhB/4mB+KAfJw7E8clXIXNnPDdgaN2nycTmwS2UdoK
	xPg2BBpIzdLFSI4Rnf/xwygR9mVXPwYaCiBfBFTMYpQIQkG1o1cK2HrFETJ1ehE9tI6pz4j6VjiWe
	J01PUkAUxqAMdczuJovxAqGakqHXKEzZXI00AAKjZkvjiKVnUAXTmTCzGwlDjDAiNbd7MJGu7s3WU
	Iwsd9eauOzoZKTefpnEmhIFWc7wUo+JOYyxjT5PnwQMkbKJvT2s3dC2/wmpfQza+VFWcsZ4YJAH9z
	MCB0pY0lI1JrOqv6hG3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izdD6-0004Sp-VC; Thu, 06 Feb 2020 09:12:32 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izdD3-0004S6-Ln
 for kexec@lists.infradead.org; Thu, 06 Feb 2020 09:12:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580980347;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=BUh0i0ZHsQ/jsDj5YBvsMi9/L1YBCsjN7m5EaFUvBaI=;
 b=en4NwJSKB3nOkorZ0pwYAflgRNlNOevmEKR4jtwN88Z1nlsK533wDQyIAMKQUCuJvLsamM
 bUq2BLrzQQ5kOZubKlwkNEgcG/Sr3EVGQw6zZ/wROSXLOoZnZK7DpaPYwJ7RXKTl2Ms8XR
 mxKZUK3onaM5Ryr/v/p9UzDqs8s/oF0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-395-0GWQdRIOOyejgzXG6QsyEQ-1; Thu, 06 Feb 2020 04:12:25 -0500
X-MC-Unique: 0GWQdRIOOyejgzXG6QsyEQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A8FE4DB2D;
 Thu,  6 Feb 2020 09:12:23 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-108.pek2.redhat.com
 [10.72.12.108])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 7617660C05;
 Thu,  6 Feb 2020 09:12:18 +0000 (UTC)
Subject: Re: [PATCH 0/2] printk: replace ringbuffer
To: John Ogness <john.ogness@linutronix.de>
References: <20200128161948.8524-1-john.ogness@linutronix.de>
 <dc4ca9b5-d2a2-03af-c186-204a3aad2399@redhat.com>
 <20200205044848.GH41358@google.com> <20200205050204.GI41358@google.com>
 <88827ae2-7af5-347b-29fb-cffb94350f8f@redhat.com>
 <20200205063640.GJ41358@google.com> <877e11h0ir.fsf@linutronix.de>
 <cd7509a5-48fd-e652-90f4-1e0fe2311134@redhat.com>
 <87sgjp9foj.fsf@linutronix.de>
From: lijiang <lijiang@redhat.com>
Message-ID: <990f0076-7df2-c956-6181-fd222c1023f6@redhat.com>
Date: Thu, 6 Feb 2020 17:12:14 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <87sgjp9foj.fsf@linutronix.de>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_011229_785407_D7F42674 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andrea Parri <parri.andrea@gmail.com>, Petr Mladek <pmladek@suse.com>,
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

> On 2020-02-05, lijiang <lijiang@redhat.com> wrote:
>> Do you have any suggestions about the size of CONFIG_LOG_* and
>> CONFIG_PRINTK_* options by default?
> 
> The new printk implementation consumes more than double the memory that
> the current printk implementation requires. This is because dictionaries
> and meta-data are now stored separately.
> 
> If the old defaults (LOG_BUF_SHIFT=17 LOG_CPU_MAX_BUF_SHIFT=12) were
> chosen because they are maximally acceptable defaults, then the defaults
> should be reduced by 1 so that the final size is "similar" to the
> current implementation.
> 
> If instead the defaults are left as-is, a machine with less than 64 CPUs
> will reserve 336KiB for printk information (128KiB text, 128KiB
> dictionary, 80KiB meta-data).
> 
> It might also be desirable to reduce the dictionary size (maybe 1/4 the
> size of text?). However, since the new printk implementation allows for
> non-intrusive dictionaries, we might see their usage increase and start
> to be as large as the messages themselves.
> 
> John Ogness
> 

Thanks for the explanation in detail.

Lianbo


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
