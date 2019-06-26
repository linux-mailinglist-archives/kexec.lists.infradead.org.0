Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A6256506
	for <lists+kexec@lfdr.de>; Wed, 26 Jun 2019 11:01:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8NLtUEqHyeDylwB7cL5Nbe48wCuDSDErJuroeznWKPo=; b=YdyXzk6DVM4pS8
	715Yh+e9oqdKp3NMHIodliOMf9c6za3DGoQPV7iNS9XgvmOkZJu0dWv/6/l09fFW/Yb6uiLVWXdWV
	OM9glwPQl+G1AR/2jvMD/9htv+ZVah3X8Nhl4JIyxFnuknS4wIiOzt24RWB7DYwMvYCKOBd0Q7wkW
	RQXVQMQqUG3AQfz9zymKxuCtsWxFrGYoqYZOPeXFiLCEcwPjh4xvrDHskUD/if3CF47FT6/3wqhsm
	hpHlg9dddkx81LlW/u2N2z84TBB9TzC2dmnSXd7xye10FQ8l9WaPBpZWxKHA9z9l+8Ofts4ZskT9X
	SMWi16gS4syyYzYM6B2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg3oH-0000P2-R6; Wed, 26 Jun 2019 09:01:45 +0000
Received: from [217.61.57.7] (helo=mail.cardgift.eu)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg3oD-0000Ol-Ui
 for kexec@lists.infradead.org; Wed, 26 Jun 2019 09:01:43 +0000
Received: by mail.cardgift.eu (Postfix, from userid 1001)
 id 67E68879E4; Wed, 26 Jun 2019 10:55:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=cardgift.eu; s=mail;
 t=1561539337; bh=Bjf5HR9iqCiPz3N1oXeqb9w4/6nhOnpqQ9zTbwldo+E=;
 h=Date:From:To:Subject:From;
 b=i/SMe2SDF3B0MISXgX1I1Gvsp6/79VnOpWhJoFcyTQVEhVX2siRPissQjCRhKutLM
 4dFuQMDCjsMTX/WB0a1ndgCCK2w9sMMkZjnPrPaKDQ/Nv/CToYCferTTXvLOHqxl2h
 LLDD2cp9uAjKeDHJb3Km4O+6zaOt22kKb2J78GMQ=
Received: by mail.cardgift.eu.cardgift.eu for <kexec@lists.infradead.org>;
 Wed, 26 Jun 2019 08:55:36 GMT
Message-ID: <20190626084500-0.1.8.9lx.0.46dv4ed6mc@cardgift.eu>
Date: Wed, 26 Jun 2019 08:55:36 GMT
From: =?UTF-8?Q?"Kapolcs_M=C3=A1ty=C3=A1s"?= <kapolcs.matyas@cardgift.eu>
To: <kexec@lists.infradead.org>
Subject: =?UTF-8?Q?B=C3=A9ren_fel=C3=BCli_juttat=C3=A1sok?=
X-Mailer: mail.cardgift.eu
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_020142_144810_B25CBBA3 
X-CRM114-Status: UNSURE (   0.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

S2VkdmVzIEjDtmxneWVtL1VyYW0hCgoyMDE5IGphbnXDoXJqw6F0w7NsIHN6aW50ZSBtaW5kZW4g
YsOpcmVuIGvDrXbDvGxpIGp1dHRhdMOhcyBqw7Z2ZWRlbGVta8OpbnQgZm9nIGFkw7N6bmkgKGtp
dsOpdGVsdCBrw6lwZXogZXogYWzDs2wgYSBTWsOJUCBrw6FydHlhKS4gQSB2w6FsdG96w6Fzb2sg
ZWxsZW7DqXJlIGEgdsOhbGxhbGF0b2sgdMO2YmIgbWludCA1NSUtYSBtZWcga8OtdsOhbmphIHRh
cnRhbmkgYSBkb2xnb3rDs2kganV0dGF0w6Fzb2sgbmV0dMOzIMO2c3N6ZWfDqXQsIG1hZ8OhcmEg
dsOhbGxhbHZhIGV6emVsIGEgbWVnZW1lbGtlZGV0dCBhZMOzdGVyaGVrZXQuIAoKSnV0dGF0w6Fz
aSBrw6FydHnDoWluayBzZWfDrXRzw6lnw6l2ZWwgMjAxOS1iZW4gYSBtdW5rw6FsdGF0w7NrIGxl
ZmVkaGV0aWsgc3ppbnRlIGF6IMO2c3N6ZXMgamVsZW5sZWcgaGFzem7DoWx0IGLDqXJlbiBrw612
w7xsaSBqdXR0YXTDoXN0LCBtaWvDtnpiZW4gbXVua2F2w6FsbGFsw7NpayDDqWx2ZXpoZXRpayBh
eiBha8OhciBrb3Jsw6F0bGFuIGZlbGhhc3puw6Fsw6FzIGxlaGV0xZFzw6lnw6l0LiAgQSBTWsOJ
UCBrw6FydHnDoXTDs2wgZWx0w6lyxZFlbiBhIG1pIGvDoXJ0ecOhaW5ra2FsIG9seWFuIG1pbmRl
bm5hcG9zIGvDtmx0c8OpZ2VrIGZlZGV6aGV0xZFlayBtaW50IHDDqWxkw6F1bCDDqWxlbG1pc3pl
ciB2w6Fzw6FybMOhcywgZWfDqXN6c8OpZ8O8Z3lpIGVsbMOhdMOhcywgcnVow6F6YXQsIGVsZWt0
cm9uaWthLCDDvHplbWFueWFna8O2bHRzw6lnLCBrw7Z6bcWxZMOtaiwgc8WRdCwgYWvDoXIgbcOp
ZyBrw6lzenDDqW56ZmVsdsOpdGVscmUgaXMgYWxrYWxtYXNhay4gCgpFeiBheiBlZ3lldGxlbiBv
bHlhbiBqdXR0YXTDoXNpIGvDoXJ0eWEgYSBtYWd5YXIgcGlhY29uLCBtZWx5ZXQgbWluZGVuIGhh
emFpIFBPUyB0ZXJtaW7DoWwgZWxmb2dhZCwgZXp6ZWwgYml6dG9zw610dmEgYSBrw6FydHlhIHN6
w6lsZXMga8O2csWxIGZlbGhhc3puw6FsaGF0w7Nzw6Fnw6F0LiAKClN6w612ZXNlbiBiZW11dGF0
b20gw5ZubmVrLCBtaWx5ZW4gdG92w6FiYmkgZWzFkW55w7Zra2VsIGrDoXIga8OhcnR5w6Fpbmsg
ZG9sZ296w7NpIGp1dHRhdMOhc2vDqW50IHTDtnJ0w6luxZEgYWxrYWxtYXrDoXNhLCDDqXMgcsOp
c3psZXRlcyB0w6Fqw6lrb3p0YXTDoXN0IGFkb2sgYSBrw6FydHnDoWsgZmVsaGFzem7DoWzDoXNp
IGxlaGV0xZFzw6lnZWlyxZFsIOKAkyBrw6lyZW0gamVsZXp6ZSBleiBpcsOhbnRpIGlnw6luecOp
dC4gCgoKS2Fwb2xjcyBNw6F0ecOhcwpIdW5nYXJ5IFRlYW0gTGVhZGVyICAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmtleGVjIG1haWxpbmcgbGlzdApr
ZXhlY0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8va2V4ZWMK
