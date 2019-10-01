Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10554C3887
	for <lists+kexec@lfdr.de>; Tue,  1 Oct 2019 17:06:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/3BLfnKqfipoZASZqH3yDTU8P0poPrraa8zUYaQMNHs=; b=eU15jF/1YlQjDO
	0JUq+2VLCZe2leT9u/KFGVgPt0P4wIyI8IzFnpn8g1zLQ+tbZvpnNIkkae0+zLMsLuBP1PLNI+Egs
	F94pYvl7hYgaL0Vhl8llUtcKiDqnwwqS7JuYgIf4M/0FB28d7zz0eR844Y7UWR5iXi8aLSU9JM/R2
	T9hW3o3+HVsa84TZcFLdiVfyYctG3cHi4tlAUZh6tMABujXsB2IShkHXopfk6KXTvgmNaX0Ddg41k
	QUMLnnMMT43rvfjGg6AXw3Bep8FapUuNnFQq1qlnnz5c4mZMyzU3ZvaCjeQMqeLF41JhKRuLAenmu
	OOiNvnqQc9QKIDRdJ1gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFJjO-0008KH-8P; Tue, 01 Oct 2019 15:06:26 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFJjK-0008JM-Ko
 for kexec@lists.infradead.org; Tue, 01 Oct 2019 15:06:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1569942367;
 bh=2hh/lSHCv/OjLLJEBzRrbJE5qDkxiRyx5J9jpKykUtU=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject;
 b=UaTVcTWboKVtFhA6GS7Fx4QlT09QEBEn0iY3ELSdp9srVaCG6VTBQSOfONclfhjgr
 W8B05DLXQ3kKNtcxCUl529i1IKrcwPLXafBepMw16lsAkL1V9EXhwh9nZ0yYN8N1ui
 dJC0/C6aiZk/FQsiLS+UkNzetOQCK+fUvG0kBpO0=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from ls3530.fritz.box ([92.116.158.189]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MRCK6-1iTZJj2zYq-00N6lK; Tue, 01
 Oct 2019 17:06:07 +0200
Date: Tue, 1 Oct 2019 17:06:05 +0200
From: Helge Deller <deller@gmx.de>
To: Simon Horman <horms@verge.net.au>, kexec@lists.infradead.org
Subject: [PATCH]kexec-tools: Fix possible out-of-bounds access in ifdown
Message-ID: <20191001150605.GA25636@ls3530.fritz.box>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Provags-ID: V03:K1:BPfQzaMXIz0ycr6JrngI0uZKK+syVLq4Z0KBgaHsnIzat1xuLdO
 9AP3NfFXeM/RE1Ajk6tV1BGkodMSnPw7X09nZr8Qvnqed1CNYBV8LPEFYOozauUnp8mtq1e
 9Tfi9Y4MyiijMimgZrZ2MDX13liUURC6OFka2ttZLqRQZOXUXeZp1IUdgSwb72E0c2Nu6N8
 swnHMOxHF6ejvOkUJMeFg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:2SxajPO66wQ=:WzALArNYgIlBdiNIXzJPpY
 gqHCAfcMFOiceajgbyE0dv6gqE+SQAvxpbNWNjsCuY9EjhFwAzd+LBIcLsT65pJ8lSN74gt3p
 7YJRu4bhK2csvZ0aIzqgK31cip9g6HeSRk2hOJ+x7IwUuTm0e3N4iD/jsBOT3QUG5fFnuUvLg
 1URKhZFTLh9ijHX2m5BdJUtvzosc53E6PPcGwB/r6Fq623zow54xMxihn0dlLN/oOwQZj8RJA
 tJobKp3Uah6q88aGdo5TrL3fU7dCr02AtukK5Q2iQYNkqcD6YGeq7UBTSU+dPOOxK5bGnnyak
 HnlLWP9zbkpdjO1LecssdVqSmNxiQi6M/wMStbv8fpZgPo5GkLyUQusIUpy+JtALaooXp+7Fa
 WMQ8Yk1hC/emqkCeST+bgDEiOp6cMs8dmgaMewbZitmzyJQ/8cFJ/1J/VbQbFGmN7BzHhMifg
 Gt6xep7c22N7HhOQfdxueIvUSs9Q8o7JEYSrfV+UEDZ801+yps86spmaiqHj0hXwaOvDiWIqB
 Sgt7SX+QFEA4T7o5bnwwfOgeXovpdkKRg5/W+pPK0RyCtSM+S1D6GX2YxRIeBQ9S7mKQ2tDGT
 xJM2dmhHclcMFvnt4MCYHQxTaeESGQv5xlfw/FB7YMI+QiwM02Mbad8Tsy8mSGqnIUuc2+84f
 VAt/XIxZyA7Zxx3hYUhCOqtCNOOsaq6Wq4w4Y+VIJz4OgfHUOBLobwsXFDyyjNXs0Bf2RQaWc
 GWNQ64dltXqqFtTnkK1Q19K5stzzFpCTzIELlmu300CrNOTBR39ZNeJKjXQtFeDkkskCD9IOm
 pZJd2JhjAiRRmiPJHT1rrr90MyFkhGhmoL7BzG3c4Q3Er/CAfRVG9n8wf9zajaxE4oyfANLTM
 mj4piZuWL4vrcjxRRV7vpg1cW0UAXMseVY0KFn7mENIMEBCV8cVBwcT4SN++Sz/GQwoM8Eg61
 srhhD3TCZMpia0UBx/vzCz95g/v6PgcLRS8jtHVUiBw2YBxZK+SMtTs8XBSrvoqzyPefBa4MR
 usUmv2/qzWxUd8ZkzBJzuwtf96mKQEw+qeTG2IOlNPBlB/x8gDrZ6bjdjOVxexbLEck/FUHg5
 Fm/I77XSI0FqCh/NfmxFC1nwZuUNJrk5zpzqrGgslrJy+gFV4DwzCWleO8c1SSW/SdOo/Bm8u
 7Ra45a+KCYcYRrO47AXZiSiBRSOeKPC1KhM6VpoTj24tKgLwkIjYN43khaoewrvCCeWzXQ+5G
 ZwGPk6aJwYBnquS+Qzh79Ek0s/Fimh8Fw1DAV/A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_080623_085539_1EF68572 
X-CRM114-Status: UNSURE (   5.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.15.19 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (deller[at]gmx.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Sven Schnelle <svens@stackframe.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Fix a possible out-of-bounds access in function ifdown():

ifdown.c: In function 'ifdown':
ifdown.c:56:4: warning: 'strncpy' specified bound 16 equals destination size [-Wstringop-truncation]
   56 |    strncpy(ifr.ifr_name, ifp->if_name, IFNAMSIZ);

Signed-off-by: Helge Deller <deller@gmx.de>

diff --git a/kexec/ifdown.c b/kexec/ifdown.c
index 9679ad7..3ac19c1 100644
--- a/kexec/ifdown.c
+++ b/kexec/ifdown.c
@@ -53,7 +53,8 @@ int ifdown(void)
 			if (strchr(ifp->if_name, ':') != NULL)
 				continue;

-			strncpy(ifr.ifr_name, ifp->if_name, IFNAMSIZ);
+			strncpy(ifr.ifr_name, ifp->if_name, IFNAMSIZ-1);
+			ifr.ifr_name[IFNAMSIZ-1] = 0;
 			if (ioctl(fd, SIOCGIFFLAGS, &ifr) < 0) {
 				fprintf(stderr, "ifdown: shutdown ");
 				perror(ifp->if_name);

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
